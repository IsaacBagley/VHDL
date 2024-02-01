----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/26/2022 10:27:50 AM
-- Design Name: 
-- Module Name: Prelab4 - Behavioral
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Prelab4 is
  Port ( arith, ahighin, bhighin : in std_logic;
  a , b : in std_logic_vector (7 downto 0);
  ahigh, bhigh : out std_logic);
end Prelab4;

architecture Behavioral of Prelab4 is
begin
process (a, b, arith)
begin
if (arith = '0') then
    if (a(7) = '1' and b(7) = '0') then
        ahigh <= a(7);
        bhigh <= b(7);
    elsif (a(7) = '0' and b(7) = '1') then
        ahigh <= a(7);
        bhigh <= b(7);
    elsif (a(6) = '1' and b(6) = '0') then
        ahigh <= a(6);
        bhigh <= b(6);
    elsif (a(6) = '0' and b(6) = '1') then
        ahigh <= a(6);
        bhigh <= b(6);
    elsif (a(5) = '1' and b(5) = '0') then
        ahigh <= a(5);
        bhigh <= b(5);
    elsif (a(5) = '0' and b(5) = '1') then
        ahigh <= a(5);
        bhigh <= b(5);
    elsif (a(4) = '1' and b(4) = '0') then
        ahigh <= a(4);
        bhigh <= b(4);
    elsif (a(4) = '0' and b(4) = '1') then
        ahigh <= a(4);
        bhigh <= b(4);
    elsif (a(3) = '1' and b(3) = '0') then
        ahigh <= a(3);
        bhigh <= b(3);
    elsif (a(3) = '0' and b(3) = '1') then
        ahigh <= a(3);
        bhigh <= b(3);
    elsif (a(2) = '1' and b(2) = '0') then
        ahigh <= a(2);
        bhigh <= b(2);
    elsif (a(2) = '0' and b(2) = '1') then
        ahigh <= a(2);
        bhigh <= b(2);
    elsif (a(1) = '1' and b(1) = '0') then
        ahigh <= a(1);
        bhigh <= b(1);
    elsif (a(1) = '0' and b(1) = '1') then
        ahigh <= a(1);
        bhigh <= b(1);
    elsif (a(0) = '1' and b(0) = '0') then
        ahigh <= a(0);
        bhigh <= b(0);
    elsif (a(0) = '0' and b(0) = '1') then
        ahigh <= a(0);
        bhigh <= b(0);
    else
        if (ahighin = '1' and bhighin = '0') then
            ahigh <= '1';
            bhigh <= '0';
        elsif (ahighin = '0' and bhighin = '1') then
            ahigh <= '0';
            bhigh <= '1';
        else
            ahigh <= '1';
            bhigh <= '1';
        end if;
    end if;
else
    if (signed(a) < signed(b) )then
        ahigh <= '0';
        bhigh <= '1';
    elsif (signed(a) > signed(b)) then
        ahigh <= '1';
        bhigh <= '0';
    else
         if (ahighin = '1' and bhighin = '0') then
            ahigh <= '1';
            bhigh <= '0';
        elsif (ahighin = '0' and bhighin = '1') then
            ahigh <= '0';
            bhigh <= '1';
        else
            ahigh <= '1';
            bhigh <= '1';
        end if;
    end if;
end if;
end process;
end Behavioral;
