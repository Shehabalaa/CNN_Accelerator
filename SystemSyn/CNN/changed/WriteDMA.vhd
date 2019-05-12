--one register to hold the step to increase
--multistep counter  to hold wirte address
--
--when receiving        
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.constants.all;

entity writedmacnn is
    generic(
    addresssize: integer:=16;
    internalbussize: integer:=16
    );
    port(
        clk:in std_logic;
        -- write logic interface
        writebaseaddress:in std_logic_vector(addresssize-1 downto 0) ;
        writestep:in std_logic_vector(addresssize-1 downto 0);
        writetoram:in std_logic;
        counter:in std_logic_vector(maximagesize-1 downto 0) ;
        initcounter,initaddress:in std_logic;
        
        internalbus:in std_logic_vector(internalbussize-1 downto 0);
        --ram interface
        ramwrite:out std_logic;
        ramdataoutbus:out std_logic_vector(internalbussize-1 downto 0);
        ramwriteaddress:out std_logic_vector(addresssize-1 downto 0) ;
        mfc:in std_logic;

        writecomplete:out std_logic;
        writecompleteoneout:out std_logic
    );
end writedmacnn;

architecture writedmacnnarch of writedmacnn is
    signal tobeadded :std_logic_vector(addresssize-1 downto 0) ;  
    signal currentcount:std_logic_vector(maximagesize-1 downto 0) ;
    constant zeros:std_logic_vector(maximagesize-1 downto 0) :=(others => '0');
    constant ones:std_logic_vector(maximagesize-1 downto 0) :=(0 => '1', others => '0');
    signal enablecounter:std_logic; 

    signal writecompleteone: std_logic;
    signal internalwritecomplete: std_logic;

    begin
        -- mapping internal signals to port signals
        writecomplete <= internalwritecomplete;

        writestepregister:entity work.regcnn generic map(addresssize) port map(writestep,'1',initcounter,'0',tobeadded);
        writeaddressregister:entity work.multistepcountercnn  generic map(addresssize) port map(writebaseaddress,tobeadded,'0',clk,initaddress,writecompleteone,ramwriteaddress);
        writecounter:entity work.downcountercnn generic map(maximagesize) port map(counter,enablecounter,clk,initcounter,currentcount); 
        
        enablecounter <= (mfc and writetoram) or initcounter;
        writecompleteone <= mfc and writetoram;
        writecompleteoneout <= writecompleteone;
        ramwrite <= writetoram;
        ramdataoutbus <= internalbus;
        process(clk, mfc,writetoram,currentcount)
        begin
            if mfc='1' and writetoram = '1' and clk = '0' and currentcount = ones then
                internalwritecomplete <= '1';
            elsif mfc = '0' then
                internalwritecomplete <= '0';
            end if;
    end process;
end architecture;