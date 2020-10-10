library ieee;
use iee.std_logic_1164.all;
use iee.std_logic_unsigned.all;

entity ula is 
port(
    s: in std_logic_vector(2 downto 0);
    a,b: in std_logic_vector (3 downto 0);
    f : out std_logic_vector (3 downto 0)
);
end ula;

architecture bhv of ula is
    begin
        process(s,a,b)
            begin
                case s is
                    when "000" => f <= "0000"
                    -- continua
                    when "100" => f <= a xor b;
                    when "110" => f <= a and b;
                    when others => f <= "1111";
                    end case;
            end process;
    end bhv;
