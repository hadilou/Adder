----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/10/2019 08:50:42 PM
-- Design Name: 
-- Module Name: lab2_block_wrapper_test - Behavioral
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

entity lab2_block_wrapper_test is
--  Port ( );
end lab2_block_wrapper_test;

architecture Behavioral of lab2_block_wrapper_test is

component lab2_block_wrapper is
  port (
    A_0 : in STD_LOGIC;
    A_1 : in STD_LOGIC;
    B_0 : in STD_LOGIC;
    B_1 : in STD_LOGIC;
    CARRYout_0 : out STD_LOGIC;
    SUM_0 : out STD_LOGIC;
    SUM_1 : out STD_LOGIC
  );
end component;

signal A : std_logic_vector (1 downto 0);
signal B : std_logic_vector (1 downto 0);
signal SUM0 : std_logic;
signal SUM1 : std_logic;
signal CARRY : std_logic;


begin
uut: lab2_block_wrapper PORT MAP (A(0),A(1),B(0),B(1),CARRY, SUM0,SUM1);

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
