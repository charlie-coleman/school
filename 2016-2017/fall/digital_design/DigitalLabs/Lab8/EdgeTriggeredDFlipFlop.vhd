----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:44:17 10/26/2016 
-- Design Name: 
-- Module Name:    EdgeTriggeredDFlipFlop - Behavioral 
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

entity EdgeTriggeredDFlipFlop is
    Port ( D : in  STD_LOGIC;
           CLK : in  STD_LOGIC;
           Q : inout  STD_LOGIC);
end EdgeTriggeredDFlipFlop;

architecture Behavioral of EdgeTriggeredDFlipFlop is

COMPONENT DFlipFlop
	PORT(
		D : IN std_logic;
		CLK : IN std_logic;       
		Q : INOUT std_logic
		);
	END COMPONENT;
signal Qhold : STD_LOGIC;
signal Qfinal: STD_LOGIC;
begin

	DFlipFlop_1: DFlipFlop PORT MAP(
		D => D,
		CLK => "not"(CLK),
		Q => Qhold
	);
	DFlipFlop_2: DFlipFlop PORT MAP(
		D => Qhold,
		CLK => CLK,
		Q => Qfinal
	);
	Q <= Qfinal;

end Behavioral;

