----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 21.02.2025 11:37:46
-- Design Name: 
-- Module Name: tbhalfadd - Behavioral
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

entity tbhalfadd is
--  Port ( );
end tbhalfadd;

architecture Behavioral of tbhalfadd is
Component halfadd is
        Port ( A : in STD_LOGIC;
               B : in STD_LOGIC;
               S : out STD_LOGIC;
               C : out STD_LOGIC);
    end Component;

    Signal A: std_logic;
    Signal B: std_logic;
    Signal C: std_logic;
    Signal S: std_logic;
begin

uut: halfadd Port map
        (A=>A, B=>B, C=>C, S=>S);

        process
            Begin
            wait for 10 ns;
            A <= '0';
            B <= '0';
            wait for 10 ns;
            A <= '1';
            B <= '0';
            wait for 10 ns;
            A <= '0';
            B <= '1';
            wait for 10 ns;
            A <= '1';
            B <= '1';
        end process;
end Behavioral;
