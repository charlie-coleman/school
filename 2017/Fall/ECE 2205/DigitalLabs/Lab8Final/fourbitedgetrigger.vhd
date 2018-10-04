----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:23:58 10/26/2016 
-- Design Name: 
-- Module Name:    fourbitedgetrigger - Behavioral 
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

entity fourbitedgetrigger is
    Port ( CLK : in  STD_LOGIC;
           D : in  STD_LOGIC_VECTOR(3 DOWNTO 0);
           Q : out  STD_LOGIC_VECTOR(3 DOWNTO 0));
end fourbitedgetrigger;

architecture Behavioral of fourbitedgetrigger is
begin
	process(CLK)
	begin
		if(CLK' event and clk = '1') then
			Q <= D;
		end if;
	end process;
	end Behavioral;
