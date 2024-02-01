library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Project1 is
  Port ( CLK, START, OP1_IN, OP2_IN : in std_logic;
        SRCT1, SRCT2 : out std_logic_vector (1 downto 0);
        --result_sim : out std_logic_vector (7 downto 0);
        RESET, OVF : inout std_logic;
        BUFFEN1, BUFFEN2, DONE, OP_LD, RES_LD, RES_OUT : out std_logic);
end Project1;

architecture Behavioral of Project1 is
type state_type is (idle, loadSR, mult, mult2, si0, si1, si2, si3, si4, si5, si6, si7,hs0,hs1,hs2,hs3,hs4,hs5,hs6,hs7, compA, so7, so6, so5, so4, so3, so2 ,so1, so0, doneOv);
  signal present_state, next_state: state_type := idle; --initial state idle
  signal OP1T, OP2T,OP1S,OP2S,res1t, result, compliment : std_logic_vector (7 downto 0);
  signal OVFT : std_logic;
begin
process (start, OP1_IN, OP2_IN,present_state ,op1s,op2s,result)
begin
    OP1T<=OP1S;
    OP2T<=OP2S;
    OVFT <= OVF;
case present_state is
    when idle =>
        DONE <= '1';
        OVFT <= '0';
        OP_LD <= '0';
        RES_LD <= '0';
        SRCT1 <= "00";
        SRCT2 <= "00";
        BUFFEN1 <= '0';
        BUFFEN2 <= '0';
        
        if (start = '1') then
            next_state <= loadSR;
        else
            next_state <= idle;
        end if;
    when loadSR =>
        DONE <= '0';
        OVFT <= '0';
        OP_LD <= '1';
        RES_LD <= '0';
        SRCT1 <= "11";
        SRCT2 <= "11";
        BUFFEN1 <= '0';
        BUFFEN2 <= '0';
        
        next_state <= si0;
    when si0 =>
        DONE <= '0';
        OVFT <= '0';
        OP_LD <= '1';
        RES_LD <= '0';
        SRCT1 <= "01";
        SRCT2 <= "01";
        BUFFEN1 <= '1';
        BUFFEN2 <= '1';
        next_state <=hs0 ;
    when hs0 =>
        DONE <= '0';
        OVFT <= '0';
        OP_LD <= '1';
        RES_LD <= '0';
        SRCT1 <= "00";
        SRCT2 <= "00";
        BUFFEN1 <= '1';
        BUFFEN2 <= '1';
           if OP1_IN = '1' then
                    OP1T <= "00000001";
                else
                    OP1T <= "00000000";
                end if;
                if op2_IN = '1' then
                    OP2T <= "00000001";
                else
                    OP2T <= "00000000";
                end if;
        next_state <= si1;
    when si1 =>
        DONE <= '0';
        OVFT <= '0';
        OP_LD <= '1';
        RES_LD <= '0';
        SRCT1 <= "01";
        SRCT2 <= "01";
        BUFFEN1 <= '1';
        BUFFEN2 <= '1';
        next_state <=hs1 ;
    when hs1 =>
        DONE <= '0';
        OVFT <= '0';
        OP_LD <= '1';
        RES_LD <= '0';
        SRCT1 <= "00";
        SRCT2 <= "00";
        BUFFEN1 <= '1';
        BUFFEN2 <= '1';
  if OP1_IN = '1' then
                    OP1T <=OP1S + "00000010";
                else
                    OP1T <= OP1S +"00000000";
                end if;
                if OP2_IN = '1' then
                    OP2T <=OP2S+ "00000010";
                else
                    OP2T <= OP2S+"00000000";
                end if;
        next_state <= si2;
    when si2 =>
        DONE <= '0';
        OVFT <= '0';
        OP_LD <= '1';
        RES_LD <= '0';
        SRCT1 <= "01";
        SRCT2 <= "01";
        BUFFEN1 <= '1';
        BUFFEN2 <= '1';
        next_state <=hs2 ;
    when hs2 =>
        DONE <= '0';
        OVFT <= '0';
        OP_LD <= '1';
        RES_LD <= '0';
        SRCT1 <= "00";
        SRCT2 <= "00";
        BUFFEN1 <= '1';
        BUFFEN2 <= '1';
           if OP1_IN = '1' then
                    OP1T <= OP1S +"00000100";
                else
                    OP1T <=OP1S + "00000000";
                end if;
                if OP2_IN = '1' then
                    OP2T <=OP2S+ "00000100";
                else
                    OP2t <=OP2S+ "00000000";
                end if;
        next_state <= si3;
    when si3 =>
        DONE <= '0';
        OVFT <= '0';
        OP_LD <= '1';
        RES_LD <= '0';
        SRCT1 <= "01";
        SRCT2 <= "01";
        BUFFEN1 <= '1';
        BUFFEN2 <= '1';
        next_state <=hs3 ;
    when hs3 =>
        DONE <= '0';
        OVFT <= '0';
        OP_LD <= '1';
        RES_LD <= '0';
        SRCT1 <= "00";
        SRCT2 <= "00";
        BUFFEN1 <= '1';
        BUFFEN2 <= '1';
        if OP1_IN = '1' then
                    OP1T <= OP1S +"00001000";
                else
                    OP1T <= OP1S +"00000000";
                end if;
                if OP2_IN = '1' then
                    OP2T <=OP2S+ "00001000";
                else
                    OP2T <=OP2S+ "00000000";
                end if;
        next_state <= si4;
    when si4 =>
        DONE <= '0';
        OVFT <= '0';
        OP_LD <= '1';
        RES_LD <= '0';
        SRCT1 <= "01";
        SRCT2 <= "01";
        BUFFEN1 <= '1';
        BUFFEN2 <= '1';
        next_state <=hs4 ;
    when hs4 =>
        DONE <= '0';
        OVFT <= '0';
        OP_LD <= '1';
        RES_LD <= '0';
        SRCT1 <= "00";
        SRCT2 <= "00";
        BUFFEN1 <= '1';
        BUFFEN2 <= '1';
        if OP1_IN = '1' then
                    OP1T <=OP1S + "00010000";
                else
                    OP1T <= OP1S +"00000000";
                end if;
                if OP2_IN = '1' then
                    OP2T <=OP2S+ "00010000";
                else
                    OP2T <=OP2S+ "00000000";
                end if;
        next_state <= si5;
    when si5 =>
        DONE <= '0';
        OVFT <= '0';
        OP_LD <= '1';
        RES_LD <= '0';
        SRCT1 <= "01";
        SRCT2 <= "01";
        BUFFEN1 <= '1';
        BUFFEN2 <= '1';
        next_state <=hs5 ;
    when hs5 =>
        DONE <= '0';
        OVFT <= '0';
        OP_LD <= '1';
        RES_LD <= '0';
        SRCT1 <= "00";
        SRCT2 <= "00";
        BUFFEN1 <= '1';
        BUFFEN2 <= '1';
        if OP1_IN = '1' then
                    OP1T <= OP1S +"00100000";
                else
                    OP1T <= OP1S +"00000000";
                end if;
                if OP2_IN = '1' then
                    OP2T <=OP2S+ "00100000";
                else
                    OP2T <=OP2S+ "00000000";
                end if;
         next_state <= si6;
    when si6 =>
        DONE <= '0';
        OVFT <= '0';
        OP_LD <= '1';
        RES_LD <= '0';
        SRCT1 <= "01";
        SRCT2 <= "01";
        BUFFEN1 <= '1';
        BUFFEN2 <= '1';
        next_state <=hs6 ;
    when hs6 =>
        DONE <= '0';
        OVFT <= '0';
        OP_LD <= '1';
        RES_LD <= '0';
        SRCT1 <= "00";
        SRCT2 <= "00";
        BUFFEN1 <= '1';
        BUFFEN2 <= '1';
        if OP1_IN = '1' then
                    OP1T <= OP1S +"01000000";
                else
                    OP1T <= OP1S +"00000000";
                end if;
                if OP2_IN = '1' then
                    OP2T <=OP2S+ "01000000";
                else
                    OP2T <=OP2S+ "00000000";
                end if;
        next_state <= si7;
    when si7 =>
        DONE <= '0';
        OVFT <= '0';
        OP_LD <= '1';
        RES_LD <= '0';
        SRCT1 <= "01";
        SRCT2 <= "01";
        BUFFEN1 <= '1';
        BUFFEN2 <= '1';
        next_state <=hs7 ;
    when hs7 =>
        DONE <= '0';
        OVFT <= '0';
        OP_LD <= '1';
        RES_LD <= '0';
        SRCT1 <= "00";
        SRCT2 <= "00";
        BUFFEN1 <= '1';
        BUFFEN2 <= '1';
        if OP1_IN = '1' then
                    OP1T <= OP1S +"10000000";
                else
                    OP1T <= OP1S +"00000000";
                end if;
                if OP2_IN = '1' then
                    OP2T <= OP2S + "10000000";
                else
                    OP2T <= OP2S + "00000000";
                end if;
        next_state <= compA;
    when compA =>
        DONE <= '0';
        OVFT <= '0';
        OP_LD <= '0';
        RES_LD <= '0';
        SRCT1 <= "00";
        SRCT2 <= "00";
        compliment <= (not(op1s) + 1);
        result   <= (op2s + compliment);
      
        if (op2s(7) = compliment(7)) and (op2s(7) /= res1t  (7)) then
            OVFT <= '1';
        else
            OVFT <= '0';
        end if;
        
        if (op2s(7) = compliment(7)) and (op2s(7) /= res1t  (6)) then
            OVFT <= '1';
        else
            OVFT <= OVFT;
        end if;
        
        next_state <= so7;
     when so7 =>
        DONE <= '0';
        OP_LD <= '0';
        RES_LD <= '1';
        SRCT1 <= "10";
        SRCT2 <= "10";
           BUFFEN1 <= '1';
        BUFFEN2 <= '1';
        RES_OUT <= result(7);
        
        next_state <= so6;
    when so6 =>
        DONE <= '0';
        OP_LD <= '0';
        RES_LD <= '1';
        SRCT1 <= "10";
        SRCT2 <= "10";
        
        RES_OUT <= result(6);
        BUFFEN1 <= '1';
        BUFFEN2 <= '1';
        next_state <= so5;
    when so5 =>
        DONE <= '0';
        OP_LD <= '0';
        RES_LD <= '1';
        SRCT1 <= "10";
        SRCT2 <= "10";
        
        RES_OUT <= result(5);
        BUFFEN1 <= '1';
        BUFFEN2 <= '1';
        next_state <= so4;
    when so4 =>
        DONE <= '0';
        OP_LD <= '0';
        RES_LD <= '1';
        SRCT1 <= "10";
        SRCT2 <= "10";
        
        RES_OUT <= result(4);
        BUFFEN1 <= '1';
        BUFFEN2 <= '1';
        next_state <= so3;
    when so3 =>
        DONE <= '0';
        OP_LD <= '0';
        RES_LD <= '1';
        SRCT1 <= "10";
        SRCT2 <= "10";
        
        RES_OUT <= result(3);
        BUFFEN1 <= '1';
        BUFFEN2 <= '1';
        next_state <= so2;
    when so2 =>
        DONE <= '0';
        OP_LD <= '0';
        RES_LD <= '1';
        SRCT1 <= "10";
        SRCT2 <= "10";
        
        RES_OUT <= result(2);
        BUFFEN1 <= '1';
        BUFFEN2 <= '1';
        next_state <= so1;
    when so1 =>
        DONE <= '0';
        OP_LD <= '0';
        RES_LD <= '1';
        SRCT1 <= "10";
        SRCT2 <= "10";
        BUFFEN1 <= '1';
        BUFFEN2 <= '1';
        RES_OUT <= result(1);
        
        next_state <= so0;
    when so0 =>
        DONE <= '0';
        OP_LD <= '0';
        RES_LD <= '1';
        SRCT1 <= "10";
        SRCT2 <= "10";
        BUFFEN1 <= '1';
        BUFFEN2 <= '1';
        RES_OUT <= result(0);
        
        next_state <= mult;
    when mult =>
        DONE <= '0';
        OP_LD <= '0';
        RES_LD <= '1';
        SRCT1 <= "10";
        SRCT2 <= "10";
           BUFFEN1 <= '1';
        BUFFEN2 <= '1';
        RES_OUT <= '0';
        
        next_state <= mult2;
    when mult2 =>
        DONE <= '0';
        OP_LD <= '0';
        RES_LD <= '1';
        SRCT1 <= "10";
        SRCT2 <= "10";
           BUFFEN1 <= '1';
        BUFFEN2 <= '1';
        RES_OUT <= '0';
        
        next_state <= doneOv;
    when doneOv =>
        DONE <= '1';
        OP_LD <= '0';
        RES_LD <= '0';
        SRCT1 <= "00";
        SRCT2 <= "00";
        BUFFEN1 <= '1';
        BUFFEN2 <= '1';
        if (start = '0') then
            next_state <= doneOv;
        else
            next_state <= loadSR;
        end if;
end case;
end process;
CLOCK: process(CLK, RESET)
    begin
        if RESET = '0' then
            present_state <= IDLE;
        elsif falling_edge(CLK) then
            present_state <= next_state;
            OP1S<=OP1T;
            OP2S<=OP2T;
            OVF <= OVFT;
            res1t <=result  ;
            --result_sim <= result;
        end if;
    end process;

end Behavioral;
