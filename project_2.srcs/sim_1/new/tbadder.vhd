----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 27.02.2025 23:01:56
-- Design Name: 
-- Module Name: tbadder - Behavioral
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

entity tbadder is
end tbadder;

architecture behavior of tbadder is 

    -- Component Declaration
    COMPONENT Adder
    PORT(
         A : IN  std_logic;
         B : IN  std_logic;
         Cin : IN  std_logic;
         Sum : OUT  std_logic;
         Cout : OUT  std_logic
        );
    END COMPONENT;
    
    -- Inputs
    signal A : std_logic := '0';
    signal B : std_logic := '0';
    signal Cin : std_logic := '0';

    -- Outputs
    signal Sum : std_logic;
    signal Cout : std_logic;

BEGIN
 
    -- Instantiate the UUT (Unit Under Test)
    uut: Adder PORT MAP (
          A => A,
          B => B,
          Cin => Cin,
          Sum => Sum,
          Cout => Cout
        );

    -- Stimulus process
    stim_proc: process
    begin		
        -- Test Case 1: 0 + 0 + 0 = 0, Carry = 0
        A <= '0'; B <= '0'; Cin <= '0';
        wait for 10 ns;

        -- Test Case 2: 0 + 0 + 1 = 1, Carry = 0
        A <= '0'; B <= '0'; Cin <= '1';
        wait for 10 ns;

        -- Test Case 3: 0 + 1 + 0 = 1, Carry = 0
        A <= '0'; B <= '1'; Cin <= '0';
        wait for 10 ns;

        -- Test Case 4: 0 + 1 + 1 = 0, Carry = 1
        A <= '0'; B <= '1'; Cin <= '1';
        wait for 10 ns;

        -- Test Case 5: 1 + 0 + 0 = 1, Carry = 0
        A <= '1'; B <= '0'; Cin <= '0';
        wait for 10 ns;

        -- Test Case 6: 1 + 0 + 1 = 0, Carry = 1
        A <= '1'; B <= '0'; Cin <= '1';
        wait for 10 ns;

        -- Test Case 7: 1 + 1 + 0 = 0, Carry = 1
        A <= '1'; B <= '1'; Cin <= '0';
        wait for 10 ns;

        -- Test Case 8: 1 + 1 + 1 = 1, Carry = 1
        A <= '1'; B <= '1'; Cin <= '1';
        wait for 10 ns;

        wait;
    end process;

END behavior;