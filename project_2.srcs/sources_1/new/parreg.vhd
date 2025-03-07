----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03.03.2025 15:22:25
-- Design Name: 
-- Module Name: parreg - Behavioral
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

entity parreg is
Port (clk : in std_logic;
      res : in std_logic;
      load : in std_logic;
      Ri : in std_logic_vector(7 downto 0);
      Ro : out std_logic_vector(7 downto 0));
end parreg;

architecture Behavioral of parreg is

begin
 process (clk)
 begin
 if (res='1') then
 Ro <= "00000000";
 else
 if (clk='1' and clk'event and load='1') then
 Ro <= Ri;
 end if;
 end if;
 end process;
end Behavioral;
