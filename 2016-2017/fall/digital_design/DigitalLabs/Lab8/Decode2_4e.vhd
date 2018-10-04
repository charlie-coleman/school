----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:43:07 10/26/2016 
-- Design Name: 
-- Module Name:    Decode2_4e - Behavioral 
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

entity Decode2_4e is
    Port ( S0 : in  STD_LOGIC;
           S1 : in  STD_LOGIC;
           EN : in  STD_LOGIC;
           Y0 : out  STD_LOGIC;
           Y1 : out  STD_LOGIC;
           Y2 : out  STD_LOGIC;
           Y3 : out  STD_LOGIC);
end Decode2_4e;

architecture Behavioral of Decode2_4e is

begin

	Y0 <= not S1 and not S0 and EN;
	Y1 <= not S1 and S0 and EN;
	Y2 <= S1 and not S0 and EN;
	Y3 <= S1 and S0 and EN;
	
end Behavioral;

