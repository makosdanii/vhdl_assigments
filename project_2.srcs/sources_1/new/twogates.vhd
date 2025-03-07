----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 14.02.2025 13:25:43
-- Design Name: 
-- Module Name: twogates - Behavioral
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

entity twogates is
 Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           D : in STD_LOGIC;
           E : out STD_LOGIC);
end twogates;

architecture Behavioral of twogates is
Signal C: std_logic;
begin
C <= A and B;
E<= C or D;

end Behavioral;
