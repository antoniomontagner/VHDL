library ieee;
use ieee.std_logic_1164.all;
 
 
entity flipflopJK is
    port(
		j: in std_logic;
		k: in std_logic;
		clock: in std_logic;
		q: out std_logic;
        qb: out std_logic
    );
end flipflopJK;


 architecture comportamento of flipflopJK is
begin
process(clock)
		variable aux: std_logic;
    begin
		if(clock='1' and clock'event) then
			if(j='0' and k='0')then
			aux:=aux;
		elsif(j='1' and k='1')then
	    	aux:= not aux;
		elsif(j='0' and k='1')then
		    aux:='0';
		else
		    aux:='1';
		end if;
		end if;
	    q<=aux;
	    qb <=not aux;
    end process;
end comportamento;