----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 21.02.2025 11:55:43
-- Design Name: 
-- Module Name: fulladd - Behavioral
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

entity fulladd is
    Port ( A,B : in STD_LOGIC_VECTOR (7 downto 0);
           Cin : in STD_LOGIC;
           Cout : out STD_LOGIC;
           Sum : out STD_LOGIC_VECTOR(7 downto 0));
end fulladd;

architecture Logic of fulladd is

component Adder
Port (A, B, Cin: in STD_LOGIC;
      Sum, Cout: out STD_LOGIC);
end component;

signal Carry: STD_LOGIC_VECTOR(6 downto 0);

begin

U1 : Adder port map (A(0),B(0),Cin,Sum(0),Carry(0));
U2 : for i in 1 to 6 generate
begin
U3 : Adder port map (A(i),B(i),Carry(i-1),Sum(i),Carry(i));
end generate;
U4 : Adder port map (A(7),B(7),Carry(6),Sum(7),Cout);


end Logic;
