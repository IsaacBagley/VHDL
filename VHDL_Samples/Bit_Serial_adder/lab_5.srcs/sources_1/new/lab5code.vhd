----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/05/2022 07:10:37 PM
-- Design Name: 
-- Module Name: lab5code - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mult4bit is
Port ( A, B : in std_logic_vector (3 downto 0);
P : out std_logic_vector (7 downto 0));
end mult4bit;

architecture Behavioral of mult4bit is
component CarrLkA4 is
port (A, B: in std_logic_vector(3 downto 0); Ci: in std_logic; -- Inputs
S: out std_logic_vector(3 downto 0); Co: out std_logic);
end component;
signal W : std_logic_vector (6 downto 0);
signal Z : std_logic_vector (7 downto 0);
signal Q : std_logic_vector (7 downto 0);
begin
P(0) <= A(0) and B(0);
W(0) <= A(1) and B(0);
W(1) <= A(2) and B(0);
W(2) <= A(3) and B(0);
W(3) <= A(0) and B(1);
W(4) <= A(1) and B(1);
W(5) <= A(2) and B(1);
W(6) <= A(3) and B(1);
Z(4) <= A(0) and B(2);
Z(5) <= A(1) and B(2);
Z(6) <= A(2) and B(2);
Z(7) <= A(3) and B(2);
Q(4) <= A(0) and B(3);
Q(5) <= A(1) and B(3);
Q(6) <= A(2) and B(3);
Q(7) <= A(3) and B(3);
f_adder0 : CarrLkA4 port map (B(0) => W(0), B(1) => W(1), B(2) => W(2), B(3) => '0', A(0) => W(3), A(1) 
=>
W(4), A(2) => W(5), A(3) => W(6), S(0) => P(1), S(1) => Z(0), S(2) => Z(1), S(3) => Z(2), Co => Z(3), Ci 
=> '0');
f_adder1 : CarrLkA4 port map (B(0)=> Z(0), B(1) => Z(1),B(2)=> Z(2), B(3) => Z(3), A(0)=> Z(4), A(1) => 
Z(5),
A(2)=> Z(6), A(3) => Z(7), S(0) => P(2), S(1) => Q(0), S(2) => Q(1), S(3) => Q(2), Co => Q(3), Ci => '0' );
f_adder2 : CarrLkA4 port map (B(0)=> Q(0), B(1) => Q(1),B(2)=> Q(2), B(3) => Q(3), A(0)=> Q(4), A(1) 
=> Q(5),
A(2)=> Q(6), A(3) => Q(7), S(0) => P(3), S(1) => P(4), S(2) => P(5), S(3) => P(6), Co => P(7), Ci => '0');
end Behavioral;
