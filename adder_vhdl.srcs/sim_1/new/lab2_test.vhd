----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/10/2019 07:36:33 PM
-- Design Name: 
-- Module Name: lab2_test - Behavioral
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

entity lab2_test is
--  Port ( );
end lab2_test;

architecture Behavioral of lab2_test is

component lab2 is
    Port ( A : in STD_LOGIC_VECTOR (1 downto 0);
           B : in STD_LOGIC_VECTOR (1 downto 0);
           SUM0 : out STD_LOGIC;
           SUM1 : out STD_LOGIC;
           CARRY : out STD_LOGIC);
end component;



signal A : std_logic_vector (1 downto 0);
signal B : std_logic_vector (1 downto 0);
signal SUM0 : std_logic;
signal SUM1 : std_logic;
signal CARRY : std_logic;

begin
uut: lab2 PORT MAP (A,B,SUM0,SUM1,CARRY);

stim_proc: process
   begin 
  
   A <= "00";
   B <= "00";
   wait for 20 ns;
   A <= "00";
   B <= "01";
   wait for 20 ns;
   A <= "00";
   B <= "10";
   wait for 20 ns;
   A <= "00";
   B <= "11";
   wait for 20 ns;
   
   
   A <= "01";
   B <= "00";
   wait for 20 ns;
   A <= "01";
   B <= "01";
   wait for 20 ns;
   A <= "01";
   B <= "10";
   wait for 20 ns;
   A <= "01";
   B <= "11";
   wait for 20 ns;
   
   A <= "10";
   B <= "00";
   wait for 20 ns;
   A <= "10";
   B <= "01";
   wait for 20 ns;
   A <= "10";
   B <= "10";
   wait for 20 ns;
   A <= "10";
   B <= "11";
   wait for 20 ns;
   
   
   A <= "11";
   B <= "00";
   wait for 20 ns;
   A <= "11";
   B <= "01";
   wait for 20 ns;
   A <= "11";
   B <= "10";
   wait for 20 ns;
   A <= "11";
   B <= "11";
   wait for 20 ns;
   
   wait ;
     
   end process ;

end Behavioral;
