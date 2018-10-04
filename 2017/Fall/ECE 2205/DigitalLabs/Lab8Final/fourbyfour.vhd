----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:46:06 10/26/2016 
-- Design Name: 
-- Module Name:    fourbyfour - Behavioral 
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

entity fourbyfour is
    Port ( S : in  STD_LOGIC_VECTOR(1 downto 0);
           w : in  STD_LOGIC;
           clock : in  STD_LOGIC;
			  Din : in STD_LOGIC_VECTOR(3 downto 0);
           Y : out  STD_LOGIC_VECTOR(3 downto 0));
			  
end fourbyfour;

architecture Behavioral of fourbyfour is
COMPONENT twofourdecoder
	PORT(
		a : IN std_logic_vector(1 downto 0);
		EN : IN std_logic;          
		b : OUT std_logic_vector(3 downto 0)
		);
	END COMPONENT;
COMPONENT fourbitedgetrigger
	PORT(
		CLK : IN std_logic;
		D : IN std_logic_vector(3 downto 0);          
		Q : OUT std_logic_vector(3 downto 0)
		);
	END COMPONENT;
	
	COMPONENT multiplexer4_1
		PORT(
			s0 : IN std_logic;
			s1 : IN std_logic;
			a0 : IN std_logic;
			a1 : IN std_logic;
			a2 : IN std_logic;
			a3 : IN std_logic;
			b0 : IN std_logic;
			b1 : IN std_logic;
			b2 : IN std_logic;
			b3 : IN std_logic;
			c0 : IN std_logic;
			c1 : IN std_logic;
			c2 : IN std_logic;
			c3 : IN std_logic;
			d0 : IN std_logic;
			d1 : IN std_logic;
			d2 : IN std_logic;
			d3 : IN std_logic;          
			y0 : OUT std_logic;
			y1 : OUT std_logic;
			y2 : OUT std_logic;
			y3 : OUT std_logic
			);
		END COMPONENT;

	signal asig: STD_LOGIC_VECTOR(3 downto 0);
	signal bsig: STD_LOGIC_VECTOR(3 downto 0);
	signal csig: STD_LOGIC_VECTOR(3 downto 0);
	signal dsig: STD_LOGIC_VECTOR(3 downto 0);
	signal decodesig: STD_LOGIC_VECTOR(3 downto 0);
	signal enablesig: STD_LOGIC;
begin

enablesig <= W and CLOCK; 
	Inst_twofourdecoder: twofourdecoder PORT MAP(
		a => S,
		b => decodesig,
		EN => enablesig
	);
	Inst_fourbitedgetriggerA: fourbitedgetrigger PORT MAP(
			CLK => decodesig(0),
			D => Din,
			Q => asig 
	);
		Inst_fourbitedgetriggerB: fourbitedgetrigger PORT MAP(
			CLK => decodesig(1),
			D => Din,
			Q => bsig
	);
		Inst_fourbitedgetriggerC: fourbitedgetrigger PORT MAP(
			CLK => decodesig(2),
			D => Din,
			Q => csig
	);
		Inst_fourbitedgetriggerD: fourbitedgetrigger PORT MAP(
			CLK => decodesig(3),
			D => Din,
			Q => dsig
	);
	Inst_multiplexer4_1: multiplexer4_1 PORT MAP(
		s0 => S(0),
		s1 => S(1),
		a0 => asig(0),
		a1 => asig(1),
		a2 => asig(2),
		a3 => asig(3),
		b0 => bsig(0),
		b1 => bsig(1),
		b2 => bsig(2),
		b3 => bsig(3),
		c0 => csig(0),
		c1 => csig(1),
		c2 => csig(2),
		c3 => csig(3),
		d0 => dsig(0),
		d1 => dsig(1),
		d2 => dsig(2),
		d3 => dsig(3),
		y0 => Y(0),
		y1 => Y(1),
		y2 => Y(2),
		y3 => Y(3)
	);

end Behavioral;


