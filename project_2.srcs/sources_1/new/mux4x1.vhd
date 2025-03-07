----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 21.02.2025 10:30:39
-- Design Name: 
-- Module Name: mux4x1 - Behavioral
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

entity mux4x1 is
Port ( Ain : in STD_LOGIC_VECTOR(7 downto 0);
           Bin : in STD_LOGIC_VECTOR(7 downto 0);
           Cin : in STD_LOGIC_VECTOR(7 downto 0);
           Din : in STD_LOGIC_VECTOR(7 downto 0);
           Eout :out STD_LOGIC_VECTOR (7 downto 0);
           S : in STD_LOGIC_VECTOR(1 downto 0));
end mux4x1;

architecture Behavioral of mux4x1 is
begin
process (S,Ain,Bin,Cin,Din)
begin
   case S is
      when "00" => Eout <= Ain;
      when "01" => Eout <= Bin;
      when "10" => Eout <= Cin;
      when "11" => Eout <= Din;
      when others => Eout <= Ain;
end case;
end process;
end Behavioral;
