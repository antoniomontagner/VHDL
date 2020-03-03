library IEEE;
use IEEE.Std_Logic_1164.all;

entity circuito is port
    (
        a: in std_logic;
        b: in std_logic;
        c: in std_logic;

        o: out std_logic
    );
end circuito;

architecture arch of circuito is

    signal OR1: std_logic;
    signal OR2: std_logic;
    signal OR3: std_logic;

begin
    OR1 <= (not a) and (not b);
    OR2 <= (not b) and (not c);
    OR3 <= a and (not c);
end arch

------------------------------------------------


entity mux is port
    (
        sel: in std_logic_vector(1 downto 0);
        a: in std_logic_vector (3 downto 0);

        o: out std_logic
    );
end mux

architecture arch of mux is 
    begin
        with sel select 
            x <= a(0) when "00",

-----------------------------------------------
entity decod is port
(
    b: in std_logic_vector(1 downto 0);
    y: out std_logic_vector (3 downto 0);
    en: in std_logic
);
architecture arch of decod is
begin
    process (b,en)
        begin 
            y <= "zzzz";

            if (en='1') then
                case b is 
                    when '00' => y <="0000"

-----------------------------------
library IEEE;
use IEEE.Std_Logic_1164.all;

entity thing is port (
    A: in std_logic;
    B: in std_logic;
    C: in std_logic;
    Y: out std_logic
);
end entity;

architecture arch of thing is (
    signal Q,W,E: std_logic;
    begin
        Y <= Q,W,E
        Q <= A and b
);
end arch

airmon-ng start wlan0
  422  airmon-ng check kill
  423  airodump-ng start wlan0mon
  424  airodump-ng  wlan0mon
  425  airmon-ng stop wlan0mon
  426  service networking restart
  427  service network-manager restart
