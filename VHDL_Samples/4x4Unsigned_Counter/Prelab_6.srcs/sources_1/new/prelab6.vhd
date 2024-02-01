----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Isaac Bagley
-- 
-- Create Date: 10/10/2022 10:43:43 AM
-- Design Name: 
-- Module Name: prelab6 - Behavioral
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

entity serialadder is
    port (a, b, clk, RESET : in STD_LOGIC;
          s : in std_logic_vector (1 downto 0); -- added for task 2
          s_out: out std_logic_vector (1 downto 0); -- control bits for shift register, added for task 2
          cy : inout STD_LOGIC;
          sum : out std_logic;
          parallelWrite : out std_logic  -- added for task 2
          );
end serialadder;


architecture behavioral of serialadder is
type state_type is (s1, s2, s3, s4);
signal present_state, next_state: state_type := s1;
begin 
s_out <= s; --added for task 2
parallelWrite <= (s(0) nand s(1));  -- added for task 2
comb_process: process(present_state, RESET) -- code for bit serial adder
begin
case present_state is
    when s1 => --done when a reset is
        sum <= '0';
        cy <= '0';
        if ((a xor b) = '1') then
            next_state <= s2;
        elsif (a = '1' and b = '1') then
            next_state <= s3;
        else
            next_state <= s1;
        end if;
    when s2 =>
        sum <= '1';
        cy <= '0';
        if ((a xor b) = '1') then
            next_state <= s2;
        elsif (a ='1' and b = '1') then
            next_state <= s3;
        else
            next_state <= s1;
        end if;
    when s3 =>
        sum <= '0';
        cy <= '1';
        if ((a xor b) = '1') then
            next_state <= s3;
        elsif ((a and b) = '1') then
            next_state <= s4;
        else
            next_state <= s2;
        end if;
    when s4 =>
        sum <= '1';
        cy <= '1';
        if ((a xor b) = '1') then
            next_state <= s3;
        elsif ((a and b) = '1') then
            next_state <= s4;
        else
            next_state <= s2;
        end if;
end case;
end process;  

clk_process: process
	begin
	wait until (clk'event and (clk = '0')); --wait until the falling edge to prevent race
	if RESET = '1' then
	present_state <= s1; 
	else present_state <= next_state;
     end if;
end process clk_process;

end behavioral;