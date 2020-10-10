library IEEE;
use IEEE.Std_Logic_1164.all;
entity marjority is 
	port( a: in std_logic;
		b: in std_logic;
		c: in std_logic;
		x:in std_logic;
		xx:in std_logic_vector(1 downto 0);
		y:out std_logic
		);

end entity;
architecture arc of marjority is
	signal d,e,f,g: in std_logic;
	begin
    y <= (d when xx<="00" else  
            e when xx<="01" else 
            f when xx<= "10" else  
            g when xx<="11");
        
end arc;


library IEEE;
use IEEE.Std_Logic_1164.all;

entity decode is 
        port (
            c: in std_logic_vector(2 downto 0);
            y: out std_logic_vector(6 downto 0)
        );
end entity;

architecture arc of decode is 
    begin
        y <= "0000000" when c<= "000" else
            "0000001" when c<= "001" else
            "0000010" when c<= "010";
end arc;


