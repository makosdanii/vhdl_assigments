----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07.03.2025 11:45:47
-- Design Name: 
-- Module Name: dflop - Behavioral
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

entity dflop is
Port (clk : in std_logic;
      d : in std_logic;
      q : out std_logic;
      qn : out std_logic);
end dflop;

architecture Behavioral of dflop is
signal inner: std_logic;
begin
process(clk)
begin
if (clk ='1' and clk'event) then
inner <= d;
q <= d;
qn <= not d;
else
q <= inner;
end if;
end process;
end Behavioral;
