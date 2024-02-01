----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Isaac Bagley
-- 
-- Create Date: 10/24/2022 11:08:53 AM
-- Design Name: 
-- Module Name: prelab7 - Behavioral
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

entity prelab7 is
  Port (R_cmd, W_cmd, RESET, clock : in std_logic;
       mux_sel, CAS, RAS, W : out std_logic  
  );
end prelab7;

architecture Behavioral of prelab7 is
-- state machine approach
  type state_type is (idle, s1, s2 ,s3, s4, s5, s6, s7, s8, s9, s10, s11, s12, s13, s14);
 
  signal present_state, next_state: state_type := idle; --initial state idle
begin
comb_process: process(present_state, RESET, R_cmd, W_cmd)
begin
	if RESET = '0' then
	   next_state <= idle;
    else
	   case present_state is
	       when idle =>  -- row addres supplied at idle
               mux_sel <= '0';
               CAS <= '1';
               RAS <= '1';
               W <= '1';
                   if R_cmd = '0' or W_cmd = '0' then
                       next_state <= s1;
                   else
                       next_state <= idle;
                   end if;
	       when s1 =>  -- immediately row address cycles
               mux_sel <= '0';
               CAS <= '1';
               RAS <= '0';
               W <= '1';
                   next_state <= s2;
	       when s2 =>  -- time delay
	           mux_sel <= '0';
               CAS <= '1';
               RAS <= '0';
               W <= '1';
                   next_state <= s3;
	       when s3 =>  -- state where column address is supplied
	           mux_sel <= '1';
               CAS <= '1';
               RAS <= '0';
               -- introduce logic for difference in write command
               if W_cmd = '0' then
                    W <= '0';
               else
                    W <= '1';
               end if;  --needs to be low on write for 1 state longer than MUX is high
                   next_state <= s4;
	       when s4 => -- setup time delay
	           mux_sel <= '1';
               CAS <= '1';
               RAS <= '0';
               if W_cmd = '0' then
                    W <= '0';
               else
                    W <= '1';
               end if;
                   next_state <= s5;
	       when s5 =>  --state where column address is read
	           mux_sel <= '1';
               CAS <= '0';
               RAS <= '0';
               if W_cmd = '0' then
                    W <= '0';
               else
                    W <= '1';
               end if;
                   next_state <= s6;
	       when s6 =>  --read time delay
	           mux_sel <= '1';
               CAS <= '0';
               RAS <= '0';
               if W_cmd = '0' then
                    W <= '0';
               else
                    W <= '1';
               end if;
                   next_state <= s7;
	       when s7 => --read time delay
	           mux_sel <= '1';
               CAS <= '0';
               RAS <= '0';
               if W_cmd = '0' then
                    W <= '0';
               else
                    W <= '1';
               end if;
                   next_state <= s8;
	       when s8 => --end of column read
	           mux_sel <= '1';
               CAS <= '1';
               RAS <= '0';
               if W_cmd = '0' then
                    W <= '0';
               else
                    W <= '1';
               end if;
                   next_state <= s9;
	       when s9 => --end of address read, need more states to ensure tRP met
	           mux_sel <= '1';
               CAS <= '1';
               RAS <= '1';
               if W_cmd = '0' then
                    W <= '0';
               else
                    W <= '1';
               end if;
                   next_state <= s10;
	       when s10 => -- delay for RAS recharge
	           mux_sel <= '0';
               CAS <= '1';
               RAS <= '1';
               if W_cmd = '0' then
                    W <= '0';
               else
                    W <= '1';
               end if;
                   next_state <= s11;
	       when s11 => -- delay for RAS recharge
	           mux_sel <= '0';
               CAS <= '1';
               RAS <= '1';
               W <= '1';
                   next_state <= s12;
	       when s12 => -- delay for RAS recharge
	           mux_sel <= '0';
               CAS <= '1';
               RAS <= '1';
               W <= '1';
                   next_state <= s13;
	       when s13 => -- delay for RAS recharge
	           mux_sel <= '0';
	           CAS <= '1';
	           RAS <= '1';
	           W <= '1';
                   next_state <= s14;
	       when s14 => -- end of delay for RAS recharge
	           mux_sel <= '0';
               CAS <= '1';
               RAS <= '1';
               W <= '1';
	               next_state <= idle;
	       when others => -- handle any state variable glitches
	           mux_sel <= '0';
	           CAS <= '1';
	           RAS <= '1';
	           W <= '1';
	               next_state <= idle;
        end case;
    end if;
end process;

clk_process: process
	begin
	wait until (CLOCK'event and CLOCK = '1'); --wait until the rising edge
	if RESET = '0' then
	present_state <= idle; 
	else present_state <= next_state;
     end if;
end process clk_process;
end Behavioral;
