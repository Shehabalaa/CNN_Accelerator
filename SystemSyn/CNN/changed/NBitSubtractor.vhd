library ieee ;
    use ieee.std_logic_1164.all;
    use ieee.numeric_std.all;
entity nbitsubtractorcnn is
    generic (wordsize:integer:=16);
    port(
        x,y:in std_logic_vector(wordsize-1 downto 0) ;
        bin:in std_logic;
        difference:out std_logic_vector(wordsize-1 downto 0) ;
        borrowout:out std_logic

    )  ;
 arch   end nbitsubtractorcnn;
    ------------------------------------------

    --arch
    architecture nbitsubtractorcnnarch of nbitsubtractorcnn is
        signal temp : std_logic_vector (wordsize-1 downto 0);
        begin
            f0:entity work.fullsubtractorcnn port map(x(0),y(0),bin,difference(0),temp(0));
            loop1:for i in 1 to  wordsize-1
               generate 
                fx:entity work.fullsubtractorcnn  port map(x(i),y(i),temp(i-1),difference(i),temp(i));
                end generate;
                borrowout<=temp(wordsize-1);
                end nbitsubtractorcnnarch;