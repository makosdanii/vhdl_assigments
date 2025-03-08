library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity counter_tb is
end entity;

architecture Behaviour of counter_tb is
component counter is
Port ( CLK,RST, SEL : in STD_LOGIC;
COUNT : inout STD_LOGIC_VECTOR (7 downto 0));
end component;

signal CLK,RST,SEL : STD_LOGIC := '1';
signal COUNT : STD_LOGIC_VECTOR(7 downto 0);

begin

uut: counter port map(
CLK => CLK,
RST => RST,
COUNT => COUNT,
SEL => SEL);

clock: process
begin
CLK <= '0';
wait for  10 ns;
CLK <= '1';
wait for 10 ns;
end process;

process
begin
RST <= '0';
SEL <= '1';
wait for 100 ns;
SEL <= '0';
wait for 100 ns;
end process;

end Behaviour;