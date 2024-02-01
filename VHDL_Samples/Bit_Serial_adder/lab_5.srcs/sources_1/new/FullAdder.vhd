library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity FullAdder is
Port ( A, B, Ci : in std_logic;
S, Co: out std_logic);
end FullAdder;

architecture Behavioral of FullAdder is
begin
S <= A XOR B XOR Ci ;
Co <= (A AND B) OR (Ci AND A) OR (Ci AND B) ;
end Behavioral;