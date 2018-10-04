----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:56:37 11/02/2016 
-- Design Name: 
-- Module Name:    UpDownCounter - Behavioral 
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

entity UpDownCounter is
    Port ( CLK : in STD_LOGIC;
			  UpDown : in  STD_LOGIC;
			  Q : inout STD_LOGIC_VECTOR(3 downto 0));

end UpDownCounter;

architecture Behavioral of UpDownCounter is

signal D : STD_LOGIC_VECTOR(3 downto 0);

begin
	process(CLK)
	begin
		if(CLK' event and CLK = '1') then
			case UpDown is
				when '0' => 
					case Q is
						when "0001" => D <= "1111";
						when "0011" => D <= "0001";
						when "0101" => D <= "0011";
						when "0111" => D <= "0101";
						when "1001" => D <= "0111";
						when "1011" => D <= "1001";
						when "1101" => D <= "1011";
						when "1111" => D <= "1101";
						when others => D <= "0001";
					end case;
				when '1' =>
					case Q is
						when "0001" => D <= "0011";
						when "0011" => D <= "0101";
						when "0101" => D <= "0111";
						when "0111" => D <= "1001";
						when "1001" => D <= "1011";
						when "1011" => D <= "1101";
						when "1101" => D <= "1111";
						when "1111" => D <= "0001";
						when others => D <= "0001";
					end case;
				when others => D <= "XXXX";
			end case;
			Q <= D;
		end if;
	end process;
end Behavioral;

