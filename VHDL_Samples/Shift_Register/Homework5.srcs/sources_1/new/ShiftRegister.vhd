----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Isaac Bagley
-- 
-- Create Date: 10/13/2022 07:32:56 PM
-- Design Name: 
-- Module Name: ShiftRegister - Behavioral
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

entity ShiftRegister is
  Port (s: in std_logic_vector (1 downto 0);
        sl, sr, clk, clr: in std_logic;
        p: in std_logic_vector (3 downto 0);
        q3, q2, q1, q0: inout std_logic);
end ShiftRegister;

architecture Behavioral of ShiftRegister is
begin
process(clk, clr)
begin
if (clr = '0') then  -- clear all outputs regardless of clock
    q0 <= '0';
    q1 <= '0';
    q2 <= '0';
    q3 <= '0';
elsif rising_edge(clk) then
    case s is 
        when "00" =>
            -- hold
            q3 <= q3;
            q2 <= q2;
            q1 <= q1;
            q0 <= q0;
        when "01" =>
            -- shift right
            q0 <= q1;
            q1 <= q2;
            q2 <= q3;
            q3 <= sr;
        when "10" => 
            -- shift left
            q3 <= q2;
            q2 <= q1;
            q1 <= q0;
            q0 <= sl;
        when "11" =>
            -- parallel load
            q0 <= p(0);  --the output is equal to the parallel load
            q1 <= p(1);
            q2 <= p(2);
            q3 <= p(3);
        when others => 
            -- hold
            q3 <= q3;
            q2 <= q2;
            q1 <= q1;
            q0 <= q0;
   end case;
else
    -- hold
        q3 <= q3;
        q2 <= q2;
        q1 <= q1;
        q0 <= q0;
end if;
end process;
end Behavioral;

