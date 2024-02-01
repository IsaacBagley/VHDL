----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12/11/2022 06:14:32 PM
-- Design Name: 
-- Module Name: final_practice - Behavioral
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

entity final_practice is
  Port (button : in std_logic;
        locked : inout std_logic );
end final_practice;

architecture Behavioral of final_practice is
begin
process(button)
begin
    if button'event and button = '0' then
        if locked = '0' then
            locked <= '1';
        elsif locked = '1' then
            locked <= '0';
        else
            locked <= '0';
        end if;
    end if;
end process;
end Behavioral;
