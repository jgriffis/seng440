----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:06:05 08/18/2013 
-- Design Name: 
-- Module Name:    accumulator - Behavioral 
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
use IEEE.NUMERIC_STD.ALL;

entity accumulator is
	Port ( 
		clock : in STD_LOGIC;
		argument : in STD_LOGIC_VECTOR (3 downto 0);
		result : out STD_LOGIC_VECTOR (11 downto 0);
		enable : in STD_LOGIC 
	);
end accumulator;

architecture Behavioral of accumulator is

signal sum : STD_LOGIC_VECTOR(11 downto 0) := "000000000000";

begin
	process (clock, enable)
	begin
		if (rising_edge(clock)) then
			if (enable = '1') then
				sum <= STD_LOGIC_VECTOR((unsigned(argument) + unsigned(sum)));
			end if;
			result <= sum;
		end if;
	end process accum_process;

end Behavioral;


