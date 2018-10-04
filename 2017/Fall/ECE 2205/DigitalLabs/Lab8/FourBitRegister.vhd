----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:32:29 10/26/2016 
-- Design Name: 
-- Module Name:    FourBitRegister - Behavioral 
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

entity FourBitRegister is
    Port ( D1 : in  STD_LOGIC;
           D2 : in  STD_LOGIC;
           D3 : in  STD_LOGIC;
           D4 : in  STD_LOGIC;
           CLK : in  STD_LOGIC;
           Q1 : out  STD_LOGIC;
           Q2 : out  STD_LOGIC;
           Q3 : out  STD_LOGIC;
           Q4 : out  STD_LOGIC);
end FourBitRegister;

architecture Behavioral of FourBitRegister is

	COMPONENT EdgeTriggeredDFlipFlop
	PORT(
		D : IN std_logic;
		CLK : IN std_logic;       
		Q : INOUT std_logic
		);
	END COMPONENT;
signal Q1temp : STD_LOGIC;
signal Q2temp : STD_LOGIC;
signal Q3temp : STD_LOGIC;
signal Q4temp : STD_LOGIC;
begin

	ETDFlipFlop1: EdgeTriggeredDFlipFlop PORT MAP(
		D => D1,
		CLK => CLK,
		Q => Q1temp
	);
	ETDFlipFlop2: EdgeTriggeredDFlipFlop PORT MAP (
		D => D2,
		CLK => CLK,
		Q => Q2temp
	);
	ETDFlipFlop3: EdgeTriggeredDFlipFlop PORT MAP (
		D => D3,
		CLK => CLK,
		Q => Q3temp
	);
	ETDFlipFlop4: EdgeTriggeredDFlipFlop PORT MAP (
		D => D3,
		CLK => CLK,
		Q => Q4temp
	);
	Q1 <= Q1temp;
	Q2 <= Q2temp;
	Q3 <= Q3temp;
	Q4 <= Q4temp;

end Behavioral;

