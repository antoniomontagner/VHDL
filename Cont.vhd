library ieee;
use ieee.std_logic_1164.all;

entity Cont is
    port(
        reset: in std_logic;
        clock: in std_logic;
        hex0: out std_logic_vector(6 downto 0)
    );
end Cont;

architecture arc of Cont is
    type states is (e)
    signal ea,pe: states;

    process (clock,reset)
        begin
            if reset = '0' then
                ea = e0;
            elsif clock = '0'
                ea = pe;
            end if;
        end process;
    process (ae)
        begin
            case ea is
                when e0 => contagem <= "0000"; pe <= e1;
            end case;
        end process;
end arc;





"""library ieee;
use ieee.std_logic_1164.all;

entity thy is 
port ( reset: in std_logic;
        clock: in std_logic;
        hex0: out std_logic_vector(6 downto 0)
);
end entity;

architecture arc of thy is 
    type states is (e0,e1,e2,e3,e4);
    signal ea,pe:states;
begin
    process (clock,reset)
    begin
        if reset='0' then
            ea<=e0;
        elsif clock='0' then
            ea<=pe;
        end if;
    end process;
    process (ea)
        begin
            case ea is
                when E0 => contagem <= "0000"; PE <= E1;
                when E1 => contagem <= "0110"; PE <= E2;
                when E2 => contagem <= "1110"; PE <= E3;
                when E3 => contagem <= "0001"; PE <= E4;
            end case;
        end process;
end architecture;"""