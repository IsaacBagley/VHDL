----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/22/2022 07:34:12 PM
-- Design Name: 
-- Module Name: Homework_2 - Behavioral
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

entity SevenSeg is
  Port ( LT, Di, Ci, Bi, Ai: in std_logic;
        a, b, c, d, e, f, g: out std_logic);
end SevenSeg;

architecture Behavioral of SevenSeg is

begin
process (LT, Di, Ci, Bi, Ai)
    begin
    if (LT = '0') then
        a <= '1';
        b <= '1';
        c <= '1';
        d <= '1';
        e <= '1';
        f <= '1';
        g <= '1';
    elsif (Di = '0' and Ci = '0' and Bi = '0' and Ai = '0') then
        a <= '1';
        b <= '1';
        c <= '1';
        d <= '1';
        e <= '1';
        f <= '1';
        g <= '0';
    elsif (Di = '0' and Ci = '0' and Bi = '0' and Ai = '1') then
        a <= '0';
        b <= '1';
        c <= '1';
        d <= '0';
        e <= '0';
        f <= '0';
        g <= '0';
    elsif (Di = '0' and Ci = '0' and Bi = '1' and Ai = '0') then
        a <= '1';
        b <= '1';
        c <= '0';
        d <= '1';
        e <= '1';
        f <= '0';
        g <= '1';
    elsif (Di = '0' and Ci = '0' and Bi = '1' and Ai = '1') then
        a <= '1';
        b <= '1';
        c <= '1';
        d <= '1';
        e <= '0';
        f <= '0';
        g <= '1';
    elsif (Di = '0' and Ci = '1' and Bi = '0' and Ai = '0') then
        a <= '0';
        b <= '1';
        c <= '1';
        d <= '0';
        e <= '0';
        f <= '1';
        g <= '1';
    elsif (Di = '0' and Ci = '1' and Bi = '0' and Ai = '1') then
        a <= '1';
        b <= '0';
        c <= '1';
        d <= '1';
        e <= '0';
        f <= '1';
        g <= '1';
    elsif (Di = '0' and Ci = '1' and Bi = '1' and Ai = '0') then
        a <= '0';
        b <= '0';
        c <= '1';
        d <= '1';
        e <= '1';
        f <= '1';
        g <= '1';
    elsif (Di = '0' and Ci = '1' and Bi = '1' and Ai = '1') then
        a <= '1';
        b <= '1';
        c <= '1';
        d <= '0';
        e <= '0';
        f <= '0';
        g <= '0';
    elsif (Di = '1' and Ci = '0' and Bi = '0' and Ai = '0') then
        a <= '1';
        b <= '1';
        c <= '1';
        d <= '1';
        e <= '1';
        f <= '1';
        g <= '1';
    elsif (Di = '1' and Ci = '0' and Bi = '0' and Ai = '1') then
        a <= '1';
        b <= '1';
        c <= '1';
        d <= '0';
        e <= '0';
        f <= '1';
        g <= '1';
    elsif (Di = '1' and Ci = '0' and Bi = '1' and Ai = '0') then
        a <= '0';
        b <= '0';
        c <= '0';
        d <= '1';
        e <= '1';
        f <= '0';
        g <= '1';
    elsif (Di = '1' and Ci = '0' and Bi = '1' and Ai = '1') then
        a <= '0';
        b <= '0';
        c <= '1';
        d <= '1';
        e <= '0';
        f <= '0';
        g <= '1';
    elsif (Di = '1' and Ci = '1' and Bi = '0' and Ai = '0') then
        a <= '0';
        b <= '1';
        c <= '0';
        d <= '0';
        e <= '0';
        f <= '1';
        g <= '1';
    elsif (Di = '1' and Ci = '1' and Bi = '0' and Ai = '1') then
        a <= '1';
        b <= '0';
        c <= '0';
        d <= '1';
        e <= '0';
        f <= '1';
        g <= '1';
    elsif (Di = '1' and Ci = '1' and Bi = '1' and Ai = '0') then
        a <= '0';
        b <= '0';
        c <= '0';
        d <= '1';
        e <= '1';
        f <= '1';
        g <= '1';
    else
        a <= '0';
        b <= '0';
        c <= '0';
        d <= '0';
        e <= '0';
        f <= '0';
        g <= '0';
    end if;
end process;
end Behavioral;