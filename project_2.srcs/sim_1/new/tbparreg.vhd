----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03.03.2025 15:41:50
-- Design Name: 
-- Module Name: tbparreg - Behavioral
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

entity tbparreg is
--  Port ( );
end tbparreg;

architecture Behavioral of tbparreg is
component parreg is
Port (clk : in std_logic;
      res : in std_logic;
      load : in std_logic;
      Ri : in std_logic_vector(7 downto 0);
      Ro : out std_logic_vector(7 downto 0));
end component;
signal clk: std_logic;
signal res: std_logic;
signal load: std_logic;
signal Ri: std_logic_vector(7 downto 0);
signal Ro: std_logic_vector (7 downto 0);
constant clk_period : time := 50 ns;
begin
uut: parreg Port map
(clk => clk, res => res, load => load, Ri => Ri, Ro => Ro);


clk_process:process
begin
clk <='0';
wait for clk_period/2;
clk <= '1';
wait for clk_period/2;
end process;

process
begin
load <= '1';
Ri <= "10101010";
wait for 100 ns;
Ri <= "11111111";
wait for 50 ns;
load <= '0';
Ri <= "11110000";
wait for 100 ns;
load <= '1';
wait for 100ns; 
res <= '1';
end process;

end Behavioral;
