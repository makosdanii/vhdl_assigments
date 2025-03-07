----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 21.02.2025 10:31:10
-- Design Name: 
-- Module Name: tbmux4x1 - Behavioral
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

entity tbmux4x1 is
--  Port ( );
end tbmux4x1;

architecture Behavioral of tbmux4x1 is
 Component mux4x1 is
        Port ( A : in STD_LOGIC_VECTOR(7 downto 0);
               B : in STD_LOGIC_VECTOR(7 downto 0);
               C : in STD_LOGIC_VECTOR(7 downto 0);
               D : in STD_LOGIC_VECTOR(7 downto 0);
               E : out STD_LOGIC_VECTOR(7 downto 0);
               Sel : in STD_LOGIC_VECTOR(1 downto 0));
    end Component;
    Signal A: std_logic_vector(7 downto 0);
    Signal B: std_logic_vector(7 downto 0);
    Signal D: std_logic_vector(7 downto 0);
    Signal C: std_logic_vector(7 downto 0);
    Signal E: std_logic_vector(7 downto 0);
    Signal Sel: std_logic_vector(1 downto 0);
begin
uut: mux4x1 Port map
(A => A, B => B,C => C,D => D,E => E,Sel => Sel);
    
    stim_proc:process
        Begin
            wait for 100ns;
            A <= "01010101";
            B <= "10101010";
            C <= "00001111";
            D <= "11110000";
            Sel <= "00";
            wait for 100ns;
            Sel <= "01";
            wait for 100ns;
            Sel <= "10";
            wait for 100ns;
            Sel <= "11";
            wait for 100ns;
end process;
end Behavioral;
