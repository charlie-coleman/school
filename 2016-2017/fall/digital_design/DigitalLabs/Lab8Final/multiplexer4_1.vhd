----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:12:26 10/19/2016 
-- Design Name: 
-- Module Name:    multiplexer4_1 - Behavioral 
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

entity multiplexer4_1 is
    Port ( s0 : in  STD_LOGIC;
           s1 : in  STD_LOGIC;
           a0 : in  STD_LOGIC;
           a1 : in  STD_LOGIC;
           a2 : in  STD_LOGIC;
           a3 : in  STD_LOGIC;
           b0 : in  STD_LOGIC;
           b1 : in  STD_LOGIC;
           b2 : in  STD_LOGIC;
           b3 : in  STD_LOGIC;
           c0 : in  STD_LOGIC;
           c1 : in  STD_LOGIC;
           c2 : in  STD_LOGIC;
           c3 : in  STD_LOGIC;
           d0 : in  STD_LOGIC;
           d1 : in  STD_LOGIC;
           d2 : in  STD_LOGIC;
           d3 : in  STD_LOGIC;
           y0 : out  STD_LOGIC;
           y1 : out  STD_LOGIC;
           y2 : out  STD_LOGIC;
           y3 : out  STD_LOGIC);
end multiplexer4_1;

architecture Behavioral of multiplexer4_1 is

begin
	y0 <= a0 when (s1 = '0' and s0 = '0') else 
			b0 when (s1 = '0' and s0 = '1') else 
			c0 when (s1 = '1' and s0 = '0') else 
			d0 when (s1 = '1' and s0 = '1'); 
	y1 <= a1 when (s1 = '0' and s0 = '0') else 
			b1 when (s1 = '0' and s0 = '1') else 
			c1 when (s1 = '1' and s0 = '0') else 
			d1 when (s1 = '1' and s0 = '1'); 
	y2 <= a2 when (s1 = '0' and s0 = '0') else 
			b2 when (s1 = '0' and s0 = '1') else 
			c2 when (s1 = '1' and s0 = '0') else 
			d2 when (s1 = '1' and s0 = '1'); 
	y3 <= a3 when (s1 = '0' and s0 = '0') else 
			b3 when (s1 = '0' and s0 = '1') else 
			c3 when (s1 = '1' and s0 = '0') else 
			d3 when (s1 = '1' and s0 = '1'); 
end Behavioral;

