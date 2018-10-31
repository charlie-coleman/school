----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/16/2018 12:20:48 AM
-- Design Name: 
-- Module Name: part1 - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity part1 is
    port (
       read_address : in std_logic_vector(31 downto 0);
       write_address : in std_logic_vector(31 downto 0);
       data : inout std_logic_vector(15 downto 0);
       clock : in std_logic;
       rw : in std_logic
    );
end part1;

architecture Behavioral of part1 is
    type word_array is array (0 to 15) of std_logic_vector(15 downto 0);
    signal read_arr : word_array;
    signal write_arr : word_array;
begin
    read_arr <= (x"0000", x"0001", x"0002", x"0003", x"0004", x"0005", x"0006", x"0007", x"0008", x"0009", x"000A", x"000B", x"000C", x"000D", x"000E"); 
    process (read_address, clock, rw)
    begin
        if (rising_edge(clock) and rw = '0' and read_address(4) = '0') then
            data <= read_arr(to_integer(unsigned(read_address(3 downto 0))));
        end if;
    end process;
    
    process (write_address, clock, rw)
    begin
        if (rising_edge(clock) and rw = '1' and write_address(4) = '1') then
            write_arr(to_integer(unsigned(write_address(3 downto 0)))) <= data;
        end if;
    end process;

end Behavioral;
