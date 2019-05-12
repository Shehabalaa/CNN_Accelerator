library ieee;
use ieee.std_logic_1164.all;


entity rowdecodercnn is
  port(
      loadwindow, finishoneread, clk: in std_logic;
      decoderout: out std_logic_vector(2 downto 0)
    );

end rowdecodercnn;

------------------------------------------------------------

-- configcnn architecture

architecture rowdecodercnnarch of rowdecodercnn is

    signal resetcounter: std_logic;

    begin
        resetcounter <= not loadwindow;

        decodercounter: entity work.countercnn generic map(3) port map(
            finishoneread, resetcounter, clk, decoderout
        );
        
end architecture;