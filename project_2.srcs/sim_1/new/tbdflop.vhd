----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07.03.2025 11:46:09
-- Design Name: 
-- Module Name: tbdflop - Behavioral
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

entity tbdflop is
--  Port ( );
end tbdflop;

architecture Behavioral of tbdflop is
component dflop
Port (clk : in std_logic;
      d : in std_logic;
      q : out std_logic;
      qn : out std_logic);
      end component;
  signal clk: std_logic;    
  signal d: std_logic; 
  signal q: std_logic; 
  signal qn: std_logic;    
      constant clk_period : time := 100 ns;
begin
uut: dflop port map
(clk => clk, d=> d, q=>q, qn =>qn);

clk_process:process
begin
CLK <='0';
wait for clk_period/2;
CLK <= '1';
wait for clk_period/2;
end process;

process
begin
d<='1';
wait for 200 ns;
d <= '0';
wait for 100 ns;
d <= '1';
end process;
end Behavioral;
