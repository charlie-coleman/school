----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:57:48 09/07/2017 
-- Design Name: 
-- Module Name:    ripple_carry_adder - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
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
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ripple_carry_adder is
	port( a, b : in std_logic_vector(3 downto 0);
		carry_in: in std_logic;
		sum : out std_logic_vector(3 downto 0);
		carry_out : out std_logic);
end ripple_carry_adder;

architecture Behavioral of ripple_carry_adder is
signal carry : std_logic_vector(3 downto 0);
begin
	sum(0)<=a(0) xor b(0) xor carry_in;
	carry(0)<=(a(0) and b(0)) or (a(0) and carry_in) or (b(0) and carry_in);
	sum(1)<=a(1) xor b(1) xor carry(0);
	carry(1)<=(a(1) and b(1)) or (a(1) and carry(0)) or (b(1) and carry(0));
	sum(2)<=a(2) xor b(2) xor carry(1);
	carry(2)<=(a(2) and b(2)) or (a(2) and carry(1)) or (b(2) and carry(1));
	sum(3)<=a(3) xor b(3) xor carry(2);
	carry(3)<=(a(3) and b(3)) or (a(3) and carry(2)) or (b(3) and carry(2));
	carry_out<=carry(3);
end Behavioral;

