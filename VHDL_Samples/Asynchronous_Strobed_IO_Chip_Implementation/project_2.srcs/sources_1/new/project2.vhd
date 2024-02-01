----------------------------------------------------------------------------------
-- Company:
-- Engineer: Isaac Bagley, Kyle Taiarol
--
-- Create Date: 12/01/2022 06:46:59 PM
-- Design Name:
-- Module Name: project2 - Behavioral
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

entity project2 is
  Port ( CE , A0, WR, RD, RESET, STB: in std_logic;
    INTR, IBF : inout std_logic;
    D_in_enable, P_in_enable : out std_logic;
    P, D: inout std_logic_vector(7 downto 0) );
end project2;

architecture Behavioral of project2 is
signal qualified_read, Y1, Y2, INTE : std_logic;
signal Data_In: std_logic_vector(7 downto 0);
signal CR : std_logic_vector(1 downto 0);

signal SR : std_logic_vector(2 downto 0);
begin
qualified_read <= A0 OR RD OR CE;  -- qualified read signal is only active when A0 = 0, RD = 0, CE = 0, active low entity

asych_process: process(qualified_read, STB, WR, RESET)
begin
    Y1 <= (Y1 and STB) OR
    (not(Y2) and STB and qualified_read)
     OR RESET;
        -- initial state of y1, y2 = 11 and active high reset means y variables should be OR'd with RESET
    Y2 <= (qualified_read OR Y1) OR RESET;
        
    IBF <= ((Y2 and not(STB)) OR
    (not(Y1) and not(STB)) OR
    (not(Y1) and Y2) OR
    (not(Y1) and not(qualified_read))
    ) AND not(RESET);
        
    INTR <= ((not(Y1) and Y2 and STB and qualified_read)) AND not(RESET) AND INTE;
end process;



comb_process: process(CE, WR, RD, A0, P, D, RESET, CR, SR)
    begin
    CR(0) <= CR(0);
    INTE <= CR(1);
    SR <= (INTR AND NOT(RESET)) & (INTE AND NOT(RESET)) & (IBF and NOT(RESET));
    if RESET = '1' then
            D_in_enable <= '1';
            P_in_enable <= '1';
            Data_In <= "00000000";
            D <= "ZZZZZZZZ";
            P <= "ZZZZZZZZ";
            CR(0) <= '0';
            CR(1) <= '0';
            SR <= "000";
    elsif CE = '1' then  -- chip not enabled, all outputs are high impedence
            D_in_enable <= '1';
            P_in_enable <= '1';
            P <= "ZZZZZZZZ";
            D <= "ZZZZZZZZ";
    else
        if CR(0) = '0' then  -- MODE 0 simple input
            case A0 is  
            when '0' => -- data register operations
                if RD = '0' then  --read P's data to D
                    D_in_enable <= '1';
                    P_in_enable <= '0';
                    Data_In <= P;
                    D <= Data_In;
                --elsif WR = '0' then  -- write D to Data_In, only used in bonus project
                    --D_in_enable <= '0';
                    --P_in_enable <= '1';
                    --Data_In <= D;
                    --P <= "ZZZZZZZZ";
                else
                    D_in_enable <= '1';
                    P_in_enable <= '1';
                    D <= "ZZZZZZZZ";
                    P <= "ZZZZZZZZ";
                end if;
            when '1' =>  -- status register operation
                if RD = '0' then  -- Read SR to D
                    D_in_enable <= '1';
                    P_in_enable <= '1';
                    D(0) <= SR(0);
                    D(1) <= SR(1);
                    D(2) <= SR(2);
                    --D(3) <= OBF; -- only used for bonus project
                    D(3) <= '0';
                    D(4) <= '0';
                    D(5) <= '0';
                    D(6) <= '0';
                    D(7) <= '0';
                    
                    
                elsif WR = '0' then  -- write to CR from D
                    D_in_enable <= '0';
                    P_in_enable <= '1';
                    CR(0) <= D(0);
                    CR(1) <= D(1);
                else
                    D_in_enable <= '1';
                    P_in_enable <= '1';
                    D <= "ZZZZZZZZ";
                    P <= "ZZZZZZZZ";
                end if;
            when others =>
                D_in_enable <= '1';
                P_in_enable <= '1';
                D <= "ZZZZZZZZ";
                P <= "ZZZZZZZZ";
        end case;
        elsif CR(0) = '1' then  -- MODE 1 strobed input
            case A0 is  
            when '0' => -- data register operations
                if (qualified_read = '0' and INTR = '1') then
                    D_in_enable <= '0';
                    P_in_enable <= '1';
                    D <= Data_In;
                --elsif (WR = '0' and INTR = '0') then  --bonus project
                    --D <= Data_In;
                else
                    D_in_enable <= '1';
                    P_in_enable <= '1';
                    D <= D;
                    P <= P;
                    Data_In <= Data_In;
                end if;
            when '1' =>  -- status register operation
                if (qualified_read = '0' and INTR = '1') then
                    D_in_enable <= '1';
                    P_in_enable <= '1';
                    D(0) <= SR(0);
                    D(1) <= SR(1);
                    D(2) <= SR(2);
                elsif (WR = '0' and INTR = '1') then
                    D_in_enable <= '0';
                    P_in_enable <= '1';
                    CR(0) <= D(0);
                    CR(1) <= D(1);
                else
                    D_in_enable <= '1';
                    P_in_enable <= '1';
                    CR <= CR;
                    SR <= SR;
                end if;
            when others =>
                D_in_enable <= '1';
                P_in_enable <= '1';
                D <= "ZZZZZZZZ";
                P <= "ZZZZZZZZ";
        end case;
        else -- if CR(0) is U or Z act as Reset
            Data_In <= "00000000";
            D <= "ZZZZZZZZ";
            P <= "ZZZZZZZZ";
            CR <= "00";
            SR <= "000";
            D_in_enable <= '1';
            P_in_enable <= '1';
        end if;
    end if;
    if rising_edge(WR) then  --INTE is set on WR rising edge
        INTE <= '1';
        CR(0) <= CR(0);
        CR(1) <= INTE;
    end if;
end process comb_process;
end Behavioral;
