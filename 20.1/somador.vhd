library IEEE;
use IEEE.Std_Logic_1164.all;
use ieee.std_logic_unsigned.all;

entity somador is
    --generic: = 1
    port(
        a,b: in std_logic;
        sel: in std_logic;
        s: out std_logic
    );
end somador;

architecture arch of somador is
    signal op: std_logic;
    begin(
        op<= b when sel =>0;
        op<= not(b) when sel =>1;
        s<= a + op + sel
    );
    end arch;




    library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity somador_lib is 
	generic (N: natural:=4);
	port (
		A, B: in std_logic_vector(N-1 downto 0);
		cin: in std_logic;
		S: out std_logic_vector(N downto 0)
	);
	end somador_lib;
	
architecture arc of somador_lib is
begin 
	S <= ('0' & A) + B + cin;
end arc;
