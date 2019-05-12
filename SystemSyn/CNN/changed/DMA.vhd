--
-- this file is for fetching from mem
-- address register: address to read from 
-- counter register:this register 
-- readstep register:this register will contain the value that will be added to the address register 
-- init signal:sets the address register and counter register 
-- load signal :start reading from ram using the current registers
-- on receiving mfc pass it to the iologic
-- when the countercnn equals zero send finished signal to iologic

library ieee ;
	use ieee.std_logic_1164.all;
    use ieee.numeric_std.all;
	use work.constants.all;

entity dmacnn is
generic (
    addresssize: integer:=16;
    internalbussize: integer:=16
  );
  port (
    initialcount: in std_logic_vector(2 downto 0); -- three bit to include max count size which is 5
    readbaseaddress: in std_logic_vector(addresssize-1 downto 0) ; -- the start address of the fetching (fetch -> inc with offsetaddress -> fetch again tell the countercnn ends)
    readstep: in std_logic_vector(addresssize-1 downto 0); -- three bit to include max count size which is 5
    initaddress: in std_logic;
    initcounter:in std_logic;
    load: in std_logic;
    internalbus: out std_logic_vector(internalbussize-1 downto 0);
    -- finishedoneread:out std_logic ;
    finishedonereadout:out std_logic ;
    finishedreading:out std_logic;
    clk:in std_logic;
    -- ram
    ramdatainbus: in std_logic_vector(internalbussize-1 downto 0);
    ramread: out std_logic; 
    ramreadaddress:out std_logic_vector(addresssize-1 downto 0) ;
    mfc: in std_logic
  );
end dmacnn ; 

architecture dmacnnarch of dmacnn is
signal currentcount:std_logic_vector(2 downto 0) ;
signal tobeadded:std_logic_vector(addresssize-1 downto 0) ;
signal enablecount:std_logic;
signal enabletristate:std_logic;
signal finishedoneread : std_logic;
signal internalfinishedreading: std_logic;

begin
  addressregister:entity work.multistepcountercnn generic map(addresssize) port map(readbaseaddress,tobeadded,'0',clk,initaddress,finishedoneread,ramreadaddress);
  counter:entity work.downcountercnn generic map(3) port map(initialcount,enablecount ,clk,initcounter,currentcount);
  readstepregister:entity work.regcnn generic map(addresssize) port map(readstep,'1',clk,'0',tobeadded);
  tristatelabel:entity work.tristatecnn generic map(internalbussize) port map(ramdatainbus,enabletristate,internalbus);
  finishedreading <= internalfinishedreading;
  ramread <= load;

  enablecount <= mfc or initcounter;
  enabletristate <= mfc and load;
  finishedoneread <= mfc and load;
  finishedonereadout <= finishedoneread;
  process(mfc, load, currentcount, clk)
    begin
      -- finishedreading <= mfc and ( (clk and currentcount = "000") or ((not clk) and currentcount="001") );
      if mfc = '1' and load = '1' and ( clk = '0' and currentcount = "001") then
        internalfinishedreading <= '1';
      elsif mfc = '0' then
        internalfinishedreading <= '0';
      end if;
    end process;
end architecture;