library IEEE;
use IEEE.Std_Logic_1164.all;

entity somador is
    port(
        n1 : in std_logic;
        n2 : in std_logic;
        soma : out std_logic;
        carry : out std_logic
    );
end somador;

architecture arc of somador is
    begin
        process (n1, n2, soma, carry)
            begin
                if 

