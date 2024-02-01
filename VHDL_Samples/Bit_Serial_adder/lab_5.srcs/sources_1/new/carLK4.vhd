----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/05/2022 07:17:39 PM
-- Design Name: 
-- Module Name: carLK4 - Behavioral
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

entity CarrLkA4 is
Port ( A, B : in std_logic_vector (3 downto 0);
Ci : in std_logic;
S : out std_logic_vector (3 downto 0);
Co : out std_logic);
end CarrLkA4;

architecture Behavioral of CarrLkA4 is
component FullAdder
Port ( A, B, Ci : in std_logic;
S, Co : out std_logic);
end component;
signal carry: std_logic_vector(2 downto 0);
begin
adder1: FullAdder port map( A=> A(0), B=> B(0), Ci=> Ci, S=> S(0), Co=> carry(0));
adder2: FullAdder port map( A => A(1), B => B(1), Ci => carry(0), S => S(1),Co => carry(1));
adder3: FullAdder port map( A => A(2), B => B(2), Ci => carry(1), S => S(2), Co => carry(2));
adder4: FullAdder port map( A => A(3), B => B(3), Ci => carry(2), S => S(3), Co => Co);
end Behavioral;
