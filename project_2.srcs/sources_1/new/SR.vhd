----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03.03.2025 12:39:33
-- Design Name: 
-- Module Name: SR - Behavioral
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

entity SR is
Port (S, R: in STD_LOGIC;
      clk : in STD_LOGIC;
      Q, Qn : out STD_LOGIC);
end SR;

architecture Behavioral of SR is

begin
process(clk)
variable temp:std_logic;
begin
if (clk='1' and clk'event) then
if (S='0' and R = '0') then
temp:= temp;
elsif(S='0' and R = '1') then
temp:= '0';
elsif(S='1' and R='0') then
temp:='1';
else
temp:=temp;
end if;
end if;
Q <= temp;
Qn <= not temp;
end process;
end Behavioral;
