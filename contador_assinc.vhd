library ieee;
use ieee.std_logic_1164.all;


entity contador_assinc is
    port (
        jk : in std_logic;
		clk : in std_logic;
        q1,q2,q3,q4: out std_logic
    );
end contador_assinc;


architecture comportamento of contador_assinc is

signal q12: std_logic;
signal q23: std_logic;
signal q34: std_logic;
signal q45: std_logic;

component flipflopJK is
    port(
		j: in std_logic;
		k: in std_logic;
		clock: in std_logic;
		q: out std_logic;
		qb: out std_logic);
end component;

begin
ff1: flipflopJK port map(jk, jk, clk, q1, q12);
ff2: flipflopJK port map(jk, jk, q12, q2, q23);
ff3: flipflopJK port map(jk, jk, q23, q3, q34);
ff4: flipflopJK port map(jk, jk, q34, q4, q45);

end comportamento;