library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity OutputPeripheralInterface is
    Port ( CS , A1, A0, WR, RD, CLK, RESET: in std_logic;
    D, Pin: in std_logic_vector(7 downto 0);
    RDY, OT, BUF_EN : out std_logic;
    Pout, Dout: out std_logic_vector(7 downto 0)
    );
end OutputPeripheralInterface;

architecture Behavioral of OutputPeripheralInterface is
    signal Count: std_logic_vector(7 downto 0);
    signal write_enable, pulse, INP: std_logic;
    type state_type is (s0, s1, s2, s3, s4, s5, s6, s7, s8, s9, s10);
    signal present_state, next_state: state_type := s0;
begin
register_process: process(WR, write_enable, pulse, present_state, next_state)
    begin
        BUF_EN <= '1';
        INP <= '1';
        RDY <= '1';
        case present_state is 
        when s0 =>
            write_enable <= '0';
            if WR = '0' then
                next_state <= s1;
            else
                next_state <= s0;
            end if;
        when s1 => 
            write_enable <= '1';
            RDY <= '0';
            next_state <= s2;
        when s2 => 
            write_enable <= '0';
            if WR = '0' then
                next_state <= s2;
            else
                next_state <= s3;
            end if;
        when s3 =>
            if A1 = '0' and A0 = '1' then
                next_state <= s4;
            else
                next_state <= s3;
            end if;
        when s4 =>
            write_enable <= '1';
            next_state <= s5;
        when s5 =>
            write_enable <= '1';
            next_state <= s6;
        when s6 =>
            write_enable <= '1';
            next_state <= s7;
        when s7 =>
            write_enable <= '1';
            next_state <= s8;
        when s8 =>
            write_enable <= '1';
            next_state <= s9;
        when s9 =>
            write_enable <= '1';
            if A1 = '0' or A0 = '1' then
                next_state <= s9;
            else
                next_state <= s10;
            end if;
         when s10 =>
            if A1 = '1' and A0 = '1' then
                INP <= '0';
            else
                INP <= '1';
            end if;
            next_state <= s10;
        end case;
end process register_process;


comb_process: process(CS, WR, RD, A0, A1, D, Pin, Count)
    begin
    OT <= '1';
    if CS = '1' or (WR = '1' and RD = '1') then
            Pout(0) <= 'Z';
            Pout(1) <= 'Z';
            Pout(2) <= 'Z';
            Pout(3) <= 'Z';
            Pout(4) <= 'Z';
            Pout(5) <= 'Z';
            Pout(6) <= 'Z';
            Pout(7) <= 'Z';
            
            Dout(0) <= 'Z';
            Dout(1) <= 'Z';
            Dout(2) <= 'Z';
            Dout(3) <= 'Z';
            Dout(4) <= 'Z';
            Dout(5) <= 'Z';
            Dout(6) <= 'Z';
            Dout(7) <= 'Z';
    
    elsif (A1 = '0' and A0 = '0') then
        Count <= D(7) & D(6) & D(5) & D(4) & D(3) & D(2) & D(1) & D(0);
        if write_enable = '1' then
            Pout(0) <= Count(0);
            Pout(1) <= Count(1);
            Pout(2) <= Count(2);
            Pout(3) <= Count(3);
            Pout(4) <= Count(4);
            Pout(5) <= Count(5);
            Pout(6) <= Count(6);
            Pout(7) <= Count(7);
        else
            Pout(0) <= 'Z';
            Pout(1) <= 'Z';
            Pout(2) <= 'Z';
            Pout(3) <= 'Z';
            Pout(4) <= 'Z';
            Pout(5) <= 'Z';
            Pout(6) <= 'Z';
            Pout(7) <= 'Z';
        end if;
    elsif (A1 = '0' and A0 = '1') then
        if write_enable = '1' then
            Count <= D(7) & D(6) & D(5) & D(4) & D(3) & D(2) & D(1) & D(0);
            OT <= '0';
            Pout(0) <= 'Z';
            Pout(1) <= 'Z';
            Pout(2) <= 'Z';
            Pout(3) <= 'Z';
            Pout(4) <= 'Z';
            Pout(5) <= 'Z';
            Pout(6) <= 'Z';
            Pout(7) <= 'Z';
        else
            Count <= D(7) & D(6) & D(5) & D(4) & D(3) & D(2) & D(1) & D(0);
            Pout(0) <= 'Z';
            Pout(1) <= 'Z';
            Pout(2) <= 'Z';
            Pout(3) <= 'Z';
            Pout(4) <= 'Z';
            Pout(5) <= 'Z';
            Pout(6) <= 'Z';
            Pout(7) <= 'Z';
        end if;
        
    else
        if INP = '0' then
            Count <= "00000000";
        else
            Count <= Pin(7) & Pin(6) & Pin(5) & Pin(4) & Pin(3) & Pin(2) & Pin(1) & Pin(0);
        end if;
        BUF_EN <= '1';
        Dout(0) <= Count(0);
        Dout(1) <= Count(1);
        Dout(2) <= Count(2);
        Dout(3) <= Count(3);
        Dout(4) <= Count(4);
        Dout(5) <= Count(5);
        Dout(6) <= Count(6);
        Dout(7) <= Count(7);
    end if;
end process comb_process;            
    
      
clk_process: process(CLK, present_state, next_state, RESET) is 
    begin
    if rising_edge(CLK) then
        if RESET = '0' then
            present_state <= s0;
        else
            present_state <= next_state;
        end if;
    end if;
end process clk_process;

end Behavioral;
