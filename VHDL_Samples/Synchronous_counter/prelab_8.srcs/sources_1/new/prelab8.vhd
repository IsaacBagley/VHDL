----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Isaac Bagley
-- 
-- Create Date: 10/31/2022 10:48:59 AM
-- Design Name: 
-- Module Name: prelab8 - Behavioral
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

entity prelab8 is
  Port ( OE, ACLR, ALOAD, SCLR, SLOAD, ENT, ENP, CLK : in std_logic;
        A : in std_logic_vector (3 downto 0);
        Q : inout std_logic_vector (3 downto 0);
        RCO, CCO : inout std_logic
  );
end prelab8;

architecture Behavioral of prelab8 is
signal Q_internal : std_logic_vector (3 downto 0);
begin
process (OE, ACLR, ALOAD, SCLR, SLOAD, ENT, ENP, Q_internal, CLK, Q)
begin
if (OE = '0' and ACLR = '0') then
    -- Asynchronus clear
    Q_internal <= "0000";
    Q <= Q_internal;
elsif (OE = '0' and ACLR = '1'and ALOAD = '0') then
    -- Asynchronus Load
    Q_internal <= A;
    Q <= Q_internal;
elsif (rising_edge(clk)) then
    if (OE = '0'  and ACLR = '1' and ALOAD = '1'  and SCLR = '0') then
        -- Synchronus clear
        Q_internal <= "0000";
        Q <= Q_internal;
    elsif (OE = '0' and ACLR = '1' and ALOAD = '1'  and SCLR = '1' and SLOAD = '0') then
        -- Synchronus load
        Q_internal <= A;
        Q <= Q_internal;
    elsif (OE = '0' and ACLR = '1' and ALOAD = '1'  and SCLR = '1' and SLOAD = '1' and ENT = '1' and ENP = '1') then
        --count
        Q_internal <= std_logic_vector(unsigned(Q_internal) + 1);
        Q <= Q_internal;
    elsif (OE = '1'  and ACLR = '1' and ALOAD = '1'  and SCLR = '1' and SLOAD = '1' and ENT = '1' and ENP = '1') then
        -- output disabled still counting
        Q_internal <= std_logic_vector(unsigned(Q_internal) + 1);
        Q <= "1111";
    elsif (OE = '1'  and ACLR = '1' and ALOAD = '1' and SCLR = '1' and SLOAD = '1' and not(ENT = '1' and ENP = '1')) then
        -- output disabled not counting
        Q_internal <= Q_internal;
        Q <= "1111";
    end if;
else
    -- output enabled, not counting
    Q_internal <= Q_internal;
    Q <= Q_internal;
    RCO <= RCO;
    CCO <= CCO;
end if;
if (OE = '1') then
    RCO <= '1';
elsif (Q = "1111" ) then
    RCO <= '1';
else
    RCO <= '0';
end if;
if (OE = '1') then
    CCO <= '1';
else
    CCO <= (RCO and CLK);
end if;
end process;
end Behavioral;
