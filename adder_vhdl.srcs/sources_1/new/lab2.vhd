----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/10/2019 07:16:29 PM
-- Design Name: 
-- Module Name: lab2 - Behavioral
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

entity lab2 is
    Port ( A : in STD_LOGIC_VECTOR (1 downto 0);
           B : in STD_LOGIC_VECTOR (1 downto 0);
           SUM0 : out STD_LOGIC;
           SUM1 : out STD_LOGIC;
           CARRY : out STD_LOGIC);
end lab2;

architecture Behavioral of lab2 is

component half_adder is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           SUM : out STD_LOGIC;
           CARRY : OUT STD_LOGIC);
end component;

component full_adder is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           CARRYin : in STD_LOGIC;

           SUM : out STD_LOGIC;
           CARRYout : out STD_LOGIC);
           
end component;

signal carryIn: STD_LOGIC;

begin

 ha: half_adder port map (A => A(0),
                           B => B(0),
                           SUM => SUM0,
                           CARRY => carryIn);
                           
 FA: full_adder port map ( A => A(1),
                           B=> B(1),
                           CARRYin=> carryIn,
                           SUM=> SUM1,
                           CARRYout=> CARRY);

end Behavioral;
