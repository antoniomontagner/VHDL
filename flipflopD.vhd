library ieee;
use iee.std_logic_1164.all;

entity flipflopD is
    port(
        D,clk: in std_logic;
        q: out std_logic
    );
    end flipflopD;

architecture bhv of flipflopD is 
begin
    process (clk) -- (clk,reset) , sensibilidade do process,
                        -- coloca variaveis que podem mudar ao decorrer do processo
        begin
            if clk'EVENT and clk='1' then
                q <= d
            end if;
        end process;
    end bhv;
    