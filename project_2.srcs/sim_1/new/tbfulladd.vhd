----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 21.02.2025 11:56:00
-- Design Name: 
-- Module Name: tbfulladd - Behavioral
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

entity tbfulladd is
--  Port ( );
end tbfulladd;

ARCHITECTURE behavior OF tbfulladd IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT fulladd
    PORT(
         A : IN  STD_LOGIC_VECTOR(7 downto 0);
         B : IN  STD_LOGIC_VECTOR(7 downto 0);
         Cin : IN  STD_LOGIC;
         Sum : OUT  STD_LOGIC_VECTOR(7 downto 0);
         Cout : OUT  STD_LOGIC
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(7 downto 0);
   signal B : std_logic_vector(7 downto 0);
   signal Cin : std_logic;

 	--Outputs
   signal Sum : std_logic_vector(7 downto 0);
   signal Cout : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 

 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: fulladd PORT MAP (
          A => A,
          B => B,
          Cin => Cin,
          Sum => Sum,
          Cout => Cout
          );


 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns; -- Initial delay
        
        -- Test Case 1: Simple addition
        A <= "00000001";  -- 1
        B <= "00000010";  -- 2
        Cin <= '0';        -- No carry-in
        wait for 100 ns;

        -- Test Case 2: Adding bigger numbers
        A <= "00100001";  -- 33
        B <= "00010010";  -- 18
        Cin <= '0';        -- No carry-in
        wait for 100 ns;

        -- Test Case 3: Addition with carry propagation
        A <= "00000101";  -- 5
        B <= "00000110";  -- 6
        Cin <= '1';        -- Carry-in
        wait for 100 ns;

        -- Test Case 4: Overflow condition
        A <= "11111111";  -- 255
        B <= "00000001";  -- 1
        Cin <= '0';        -- No carry-in
        wait for 100 ns;

        -- Test Case 5: Maximum sum (overflow expected)
        A <= "11111111";  -- 255
        B <= "11111111";  -- 255
        Cin <= '1';        -- Carry-in
        wait for 100 ns;
      wait;
   end process;

END;
