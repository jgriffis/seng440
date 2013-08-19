----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:03:19 08/18/2013 
-- Design Name: 
-- Module Name:    huffman - Behavioral 
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
use work.vars.all;

entity huffman is
	Port ( 
		clock : in STD_LOGIC;
		input_length : in STD_LOGIC_VECTOR (11 downto 0);
		symbol : out STD_LOGIC_VECTOR (3 downto 0);
		index_out : out STD_LOGIC_VECTOR (11 downto 0);
		symbols : out STD_LOGIC_VECTOR (11 downto 0)
	);
end huffman;

architecture Behavioral of huffman is

	component lookup
		Port ( 
			argument : in STD_LOGIC_VECTOR (6 downto 0);
			symbol : out STD_LOGIC_VECTOR (3 downto 0);
			code_length : out STD_LOGIC_VECTOR (3 downto 0)
		);
	end component;

	component accumulator
		Port (
			clock : in STD_LOGIC;
			argument : in STD_LOGIC_VECTOR (3 downto 0);
			result : out STD_LOGIC_VECTOR (11 downto 0);
			enable : in STD_LOGIC
		);
	end component;

	signal code_length : STD_LOGIC_VECTOR (3 downto 0);
	signal index : STD_LOGIC_VECTOR (11 downto 0) := "000000000000";
	signal accum_en : STD_LOGIC := '1';
	signal current : STD_LOGIC_VECTOR (6 downto 0);
	
begin

   lut: lookup port map (
		argument => current,
		symbol => symbol,
		code_length => code_length
	);

   accum: accumulator port map (
		clock => clock,
		argument => code_length,
		result => index,
		enable => accum_en
	);
	
	process (clock, index)
	begin
		if index <= input_length then		
			if rising_edge(clock) then
				current <= work.vars.input(to_integer(unsigned(index)) + 6 downto to_integer(unsigned(index)));
			end if;
		end if;
	end process;
	
end Behavioral;

