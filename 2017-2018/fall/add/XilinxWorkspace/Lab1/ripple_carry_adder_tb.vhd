--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   20:00:32 09/07/2017
-- Design Name:   
-- Module Name:   /home/charlie/backups/School 2018/Fall/ADD/XilinxWorkspace/Lab1/ripple_carry_adder_tb.vhd
-- Project Name:  Lab1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: ripple_carry_adder
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
Library ieee;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_UNSIGNED.all
use IEEE.NUMERIC_STD.all;
--entity Test bench entity:
entity ripple_carry_adder_tb is
end ripple_carry_adder_tb;
architecture test_bench of ripple_carry_adder_tb is
signal a_tb, b_tb : std_logic_vector(4 downto 0);
signal carry_in_tb : std_logic;
signal sum_tb : std_logic_vector(3 downto 0);
signal carry_out_tb : std_logic;
signal input_vector : std_logic_vector(8 downto 0):="000000000";
signal answer_vector : std_logic_vector(4 downto 0);
-- Component Declaration for the Unit Under Test (UUT)
component ripple_carry_adder
port(
	a, b : in std_logic_vector(3 downto 0);
	carry_in: in std_logic;
	sum : out std_logic_vector(3 downto 0);
	carry_out : out std_logic
	);
end component;

begin
-- Instantiate the Unit Under Test (UUT)
--uut: work.ripple_carry_adder PORT MAP( a=>a_tb(3 downto 0), b=>b_tb(3 downto 0),
	carry_in=>carry_in_tb, sum=>sum_tb, carry_out=>carry_out_tb);
uut: ripple_carry_adder PORT MAP( a=>a_tb(3 downto 0), b=>b_tb(3 downto 0),
	carry_in=>carry_in_tb, sum=>sum_tb, carry_out=>carry_out_tb);
	
a_tb(3 downto 0)<=input_vector(3 downto 0);
a_tb(4) <= '0';
b_tb(3 downto 0)<=input_vector(7 downto 4);
b_tb(4) <= '0';
carry_in_tb<=input_vector(8);
answer_vector<=a_tb+b_tb+carry_in_tb;

tb : process
begin
	input_vector<=input_vector+1;
	wait for 100 ns;
	assert answer_vector=carry_out_tb&sum_tb
	report "Incorrect Sum" & integer'image(to_integer(unsigned(a_tb))) & "+" &
		integer'image(to_integer(unsigned(b_tb))) & "+"&std_logic'image(carry_in_tb);
end process;
end test_bench;
