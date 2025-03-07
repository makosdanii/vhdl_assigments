----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 14.02.2025 13:37:04
-- Design Name: 
-- Module Name: tb_togates - Behavioral
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

entity tb_togates is
--  Port ( );
end tb_togates;

architecture Behavioral of tb_togates is
  Component twogates is
        Port ( A : in STD_LOGIC;
               B : in STD_LOGIC;
               D : in STD_LOGIC;
               E : out STD_LOGIC);
    end Component;
    Signal A: std_logic;
    Signal B: std_logic;
    Signal D: std_logic;
    Signal C: std_logic;
    Signal E: std_logic;
    
begin
 uut: twogates Port map
        (A=>A, B=>B, D=>D, E=>E);

        process
            Begin
            wait for 100 ns;
            A <= '1';
            B <= '0';
            D <= '1';
            wait for 100 ns;
            A <= '0';
            B <= '1';
            D <= '0';
        end process;

end Behavioral;
