----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Isaac Bagley
-- 
-- Create Date: 09/15/2022 12:14:52 PM
-- Design Name: 
-- Module Name: 4BitComparitor - Behavioral
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
-- use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Comparitor is
  Port ( a0, a1, a2, a3, b0, b1, b2, b3, cascAhigh, cascBhigh, cascEq: in std_logic;
        ahigh, bhigh, equal: out std_logic);
end Comparitor;

architecture Behavioral of Comparitor is

begin
process (a0, a1, a2, a3, b0, b1, b2, b3, cascAhigh, cascBhigh, cascEq)
    begin
    if (a3 = '1' and b3 = '0') then
        ahigh <= a3;
        bhigh <= b3;
        equal <= '0';
    elsif (a3 = '0' and b3 = '1') then
        ahigh <= a3;
        bhigh <= b3;
        equal <= '0';
    elsif (a2 = '1' and b2 = '0') then
        ahigh <= a2;
        bhigh <= b2;
        equal <= '0';
    elsif (a2 = '0' and b2 = '1') then
        ahigh <= a2;
        bhigh <= b2;
        equal <= '0';
    elsif (a1 = '1' and b1 = '0') then
        ahigh <= a1;
        bhigh <= b1;
        equal <= '0';
    elsif (a1 = '0' and b1 = '1') then
        ahigh <= a1;
        bhigh <= b1;
        equal <= '0';
    elsif (a0 = '1' and b0 = '0') then
        ahigh <= a0;
        bhigh <= b0;
        equal <= '0';
    elsif (a0 = '0' and b0 = '1') then
        ahigh <= a0;
        bhigh <= b0;
        equal <= '0';
     elsif (cascAhigh = '1' and cascBhigh = '0' and cascEq = '0') then
        ahigh <= '1';
        bhigh <= '0';
        equal <= '0';
    elsif (cascAhigh = '0' and cascBhigh = '1' and cascEq = '0') then
        ahigh <= '0';
        bhigh <= '1';
        equal <= '0';
    elsif (cascAhigh = '0' and cascBhigh = '0' and cascEq = '1') then
        ahigh <= '0';
        bhigh <= '0';
        equal <= '1';
    elsif (cascAhigh = '0' and cascBhigh = '0' and cascEq = '0') then
        ahigh <= '1';
        bhigh <= '1';
        equal <= '0';
    elsif (cascAhigh = '1' and cascBhigh = '1' and cascEq = '0') then
        ahigh <= '0';
        bhigh <= '0';
        equal <= '0';
    else
        ahigh <= '0';
        bhigh <= '0';
        equal <= '1';
    end if;
end process;
end Behavioral;
