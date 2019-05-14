library ieee ;
    use ieee.std_logic_1164.all;
    use ieee.numeric_std.all;
entity nbitsubtractorio is
    generic (wordsize:integer:=16);
    port(
        x,y:in std_logic_vector(wordsize-1 downto 0) ;
        bin:in std_logic;
        difference:out std_logic_vector(wordsize-1 downto 0) ;
        borrowout:out std_logic

    )  ;
    end nbitsubtractorio;
    ------------------------------------------

    --arch
    architecture nbitsubtractorioarch of nbitsubtractorio is
        signal temp : std_logic_vector (wordsize-1 downto 0);
        begin
            f0:entity work.fullsubtractorio port map(x(0),y(0),bin,difference(0),temp(0));
            loop1:for i in 1 to  wordsize-1
               generate 
                fx:entity work.fullsubtractorio  port map(x(i),y(i),temp(i-1),difference(i),temp(i));
                end generate;
                borrowout<=temp(wordsize-1);
end nbitsubtractorioarch;
