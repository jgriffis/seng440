--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   19:32:01 08/18/2013
-- Design Name:   
-- Module Name:   C:/Users/Jared/huffman/huffman_TB.vhd
-- Project Name:  huffman
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: huffman
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
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use work.vars.all;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY huffman_TB IS
END huffman_TB;
 
ARCHITECTURE behavior OF huffman_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT huffman
		PORT(
			clock : in STD_LOGIC;
			input_length : in STD_LOGIC_VECTOR (11 downto 0);
			symbol : out STD_LOGIC_VECTOR (3 downto 0);
			index_out : out STD_LOGIC_VECTOR (11 downto 0);
			symbols : out STD_LOGIC_VECTOR (11 downto 0)
		);
    END COMPONENT;
    
   --Inputs
   signal clock : STD_LOGIC := '0';
   signal input_length : STD_LOGIC_VECTOR(11 downto 0) := "000000100000";

 	--Outputs
	signal symbol : STD_LOGIC_VECTOR (3 downto 0);
	signal index_out : STD_LOGIC_VECTOR (11 downto 0);
	signal symbols : STD_LOGIC_VECTOR (11 downto 0);

   -- Clock period definitions
   constant clock_period : time := 10 ns;
	
BEGIN

	-- Instantiate the Unit Under Test (UUT)
   uut: huffman PORT MAP (
          clock => clock,
          input_length => input_length,
          symbol => symbol,
			 index_out => index_out,
			 symbols => symbols
        );

   -- Clock process definitions
   clock_process :process
   begin
		clock <= '0';
		wait for clock_period/2;
		clock <= '1';
		wait for clock_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
	
		work.vars.input := "10111101001000101010011001010100101101111011101011111010101101101100000001110010010100111110011000011111101110000001010111001011010011101010000100110100101111101011110001011000011010100010111100111111001111111000111001001011010101000010110110111010110000011011111111011110011000100110100101011001111110110110011010110011000111111000000010011010111110011001101100";
	
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for clock_period*10;

      -- insert stimulus here 
		
		wait for clock_period*10;
		
      wait;
   end process;

END;
