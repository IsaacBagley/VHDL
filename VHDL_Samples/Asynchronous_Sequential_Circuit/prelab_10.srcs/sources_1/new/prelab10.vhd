----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/15/2022 08:05:36 PM
-- Design Name: 
-- Module Name: prelab10 - Behavioral
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

entity prelab10 is
  Port (RESET, x1, x2 : in std_logic;
        y1, y2, y3 : inout std_logic;
        z : out std_logic );
end prelab10;

architecture Behavioral of prelab10 is

begin
y1 <= ((y1 and not(y3) and not(x1) and x2) or 
(y1 and y2 and not(y3) and x2) or 
(y2 and not(y3) and x1 and x2) or 
(y1 and y2 and not(y3) and x1)) 
and RESET;

y2 <= ((not(y1) and y2 and not(y3) and not(x1)) or 
(not(y1) and not(y3) and not(x1) and x2) or 
(not(y1) and y2 and not(y3) and x2) or
(y2 and not(y3) and x1 and x2))
and RESET;

y3 <= ((not(y1) and not(y2) and x1 and x2) or (not(y1) and not(y2) and y3 and x1))
    and RESET;
    
z <= ((not(y1) and not(y2) and y3 and x1) or (y1 and y2 and not(y3)))
    and RESET;

end Behavioral;
