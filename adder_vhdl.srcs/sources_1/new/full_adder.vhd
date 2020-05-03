----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/10/2019 06:45:49 PM
-- Design Name: 
-- Module Name: full_adder - Behavioral
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

entity full_adder is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           CARRYin : in STD_LOGIC;

           SUM : out STD_LOGIC;
           CARRYout : out STD_LOGIC);
           
end full_adder;

architecture Behavioral of full_adder is

component half_adder is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           SUM : out STD_LOGIC;
           CARRY : OUT STD_LOGIC);
end component;
signal c1,s1,c2: STD_LOGIC ;

begin
ha1: half_adder port map (A => A,
                           B => B,
                           SUM =>s1,
                           CARRY => c1);
 ha2: half_adder port map (A => s1,
                           B => CARRYin ,
                           SUM => SUM,
                           CARRY => c2);
       
 ha3: half_adder port map (A => c1,
                           B => c2 ,
                           SUM => CARRYout,
                           CARRY => open);
                                



end Behavioral;
