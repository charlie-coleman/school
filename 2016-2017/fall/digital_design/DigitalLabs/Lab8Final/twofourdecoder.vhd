----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:23:21 10/26/2016 
-- Design Name: 
-- Module Name:    twofourdecoder - Behavioral 
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

entity twofourdecoder is
    Port ( a : in STD_LOGIC_VECTOR(1 downto 0);
           b : out STD_LOGIC_VECTOR(3 downto 0);
			  EN : in STD_LOGIC);
end twofourdecoder;

architecture Behavioral of twofourdecoder is
begin

		b(0) <= not a(1) and not a(0) and EN;
		b(1) <= not a(1) and  a(0) and EN;
		b(2) <=  a(1) and not a(0) and EN;
		b(3) <=  a(1) and  a(0) and EN;

end Behavioral;

