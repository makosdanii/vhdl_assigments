----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 27.02.2025 22:57:35
-- Design Name: 
-- Module Name: bitadder - Behavioral
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

entity bitadder is
    Port ( A, B, Cin : in STD_LOGIC;
           Sum, Cout : out STD_LOGIC);
end bitadder;

architecture Behavioral of bitadder is
begin
    Sum <= A XOR B XOR Cin;
    Cout <= (A AND B) OR (Cin AND (A XOR B));
end Behavioral;
