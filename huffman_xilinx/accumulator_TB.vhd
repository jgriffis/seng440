--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   20:45:06 08/18/2013
-- Design Name:   
-- Module Name:   C:/Users/Jared/huffman/accumulator_TB.vhd
-- Project Name:  huffman
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: accumulator
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
USE ieee.numeric_std.ALL;
 
ENTITY accumulator_TB IS
END accumulator_TB;
 
ARCHITECTURE behavior OF accumulator_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT accumulator
    PORT(
         clock : IN  std_logic;
         argument : IN std_ulogic_vector(3 downto 0);
         result : OUT std_ulogic_vector(7 downto 0);
         enable : IN std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clock : std_logic := '0';
   signal argument : std_ulogic_vector(3 downto 0) := (others => '0');
   signal enable : std_logic := '0';

 	--Outputs
   signal result : std_ulogic_vector(7 downto 0);

   -- Clock period definitions
   constant clock_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: accumulator PORT MAP (
          clock => clock,
          argument => argument,
          result => result,
          enable => enable
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
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for clock_period*10;

      argument <= "0001";
		wait for clock_period/2;
		enable <= '1';
		wait for clock_period;
		enable <= '0';
		wait for clock_period/2;
		
		wait for clock_period*10;
		
		argument <= "1100";
		wait for clock_period/2;
		enable <= '1';
		wait for clock_period;
		enable <= '0';
		wait for clock_period/2;
		
		wait for clock_period*10;

      wait;
   end process;

END;
