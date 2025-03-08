library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity counter is
    Port ( CLK,RST, SEL : in  STD_LOGIC;
             COUNT : inout  STD_LOGIC_VECTOR (7 downto 0));
end counter;

architecture Behavioral of counter is

begin
process (CLK,RST,SEL)
begin

if (RST = '1')then
    COUNT <= "00000000";
elsif(rising_edge(CLK))then
    if(SEL = '1') then
        COUNT <= COUNT+1;
    else
        COUNT <= COUNT - 1;
    end if;
end if;

end process;
end Behavioral;