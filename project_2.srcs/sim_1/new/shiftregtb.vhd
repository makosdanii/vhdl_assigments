----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03.03.2025 13:14:00
-- Design Name: 
-- Module Name: shiftregtb - Behavioral
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

entity shiftregtb is
--  Port ( );
end shiftregtb;

architecture Behavioral of shiftregtb is
component Shiftreg is
Port (CLK, SI : in std_logic;
         SO : out std_logic);
end component;
signal CLK: std_logic := '0';
signal SI: std_logic;
signal SO: std_logic;
constant clk_period : time := 100 ns;


begin
uut: Shiftreg Port map 
(CLK => CLK, SI => SI, SO => SO);

clk_process:process
begin
CLK <='0';
wait for clk_period/2;
CLK <= '1';
wait for clk_period/2;
end process;

process
begin
SI <= '1';
wait for 100ns;
SI <= '1';
wait for 100ns;
SI <= '0';
wait for 100ns;
SI <= '0';
wait for 100ns;
SI <= '0';
wait for 100ns;
SI <= '0';
wait for 100ns;
SI <= '1';
wait for 100ns;
SI <= '1';
wait for 100ns;
end process;
end Behavioral;
