----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 21.02.2025 11:45:38
-- Design Name: 
-- Module Name: struc - Behavioral
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

entity struc is
    Port ( A : in STD_LOGIC_VECTOR (7 downto 0);
           B : in STD_LOGIC_VECTOR (7 downto 0);
           Cin : in STD_LOGIC;
           Sel : in STD_LOGIC_VECTOR (1 downto 0);
           Cout : out STD_LOGIC;
           Alu : out STD_LOGIC_VECTOR (7 downto 0));
end struc;

architecture Structural of struc is
 signal Sum, LogicResult, ALUResult: STD_LOGIC_VECTOR (7 downto 0);
    signal Carry: STD_LOGIC;

 component Adder
        Port ( A, B : in STD_LOGIC_VECTOR (7 downto 0);
               Cin : in STD_LOGIC;
               Sum : out STD_LOGIC_VECTOR (7 downto 0);
               Cout : out STD_LOGIC);
    end component;
    
component twogates is
 Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           D : in STD_LOGIC;
           E : out STD_LOGIC);
end component;

component mux4x1 is
Port ( A : in STD_LOGIC_VECTOR(7 downto 0);
           B : in STD_LOGIC_VECTOR(7 downto 0);
           C : in STD_LOGIC_VECTOR(7 downto 0);
           D : in STD_LOGIC_VECTOR(7 downto 0);
           E :out STD_LOGIC_VECTOR (7 downto 0);
           Sel : in STD_LOGIC_VECTOR(1 downto 0));
end component;
    
begin

    -- Instantiate Adder
    U1: Adder port map(A, B, Cin, Sum, Carry);

    -- Instantiate Logic Block
    U2: twogates port map(A, B, Sel, LogicResult);

    -- Multiplexer to select between ADD and Logic operations
    U3: mux4x1 port map(Sum, LogicResult, Sel(1), ALUResult);

    -- Final outputs
    C <= ALUResult;
    CarryOut <= Carry;


end Stuctural;
