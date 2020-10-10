library ieee;
use iee.std_logic_1164.all

entity dec2pra4 is
    port(
        a: in std_logic_vector (1 downto 0);
        En : in std_logic;
        y : out std_logic_vector (0 downto 3)
    );
    end dec2pra4;

architecture bhv of dec2pra4 is
    begin
    process (En,a)
        begin 
            if En = '1' then
                case a is 
                    when "00" => y <= "1000";
                    when "01" => y <= "0100";
                    when "10" => y <= "0010";
                    when "11" => y <= "0001";
                end case;
            else
                y<="0000";
            end if;
        end process;
    end bhv;



---------------------------------------------------


