-- Vhdl test bench created from schematic /home/l2/ferlicotdelbe/tp/ARCHI/TP3/add4bit.sch - Mon Oct  7 11:03:32 2013
--
-- Notes: 
-- 1) This testbench template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the unit under test.
-- Xilinx recommends that these types always be used for the top-level
-- I/O of a design in order to guarantee that the testbench will bind
-- correctly to the timing (post-route) simulation model.
-- 2) To use this template as your testbench, change the filename to any
-- name of your choice with the extension .vhd, and use the "Source->Add"
-- menu in Project Navigator to import the testbench. Then
-- edit the user defined section below, adding code to generate the 
-- stimulus for your design.
--
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
LIBRARY UNISIM;
USE UNISIM.Vcomponents.ALL;
ENTITY add4bit_add4bit_sch_tb IS
END add4bit_add4bit_sch_tb;
ARCHITECTURE behavioral OF add4bit_add4bit_sch_tb IS 

   COMPONENT add4bit
   PORT( a	:	IN	STD_LOGIC_VECTOR (3 DOWNTO 0); 
          b	:	IN	STD_LOGIC_VECTOR (3 DOWNTO 0); 
          s	:	OUT	STD_LOGIC_VECTOR (3 DOWNTO 0); 
          cout	:	OUT	STD_LOGIC);
   END COMPONENT;

   SIGNAL a	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
   SIGNAL b	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
   SIGNAL s	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
   SIGNAL cout	:	STD_LOGIC;

BEGIN

   UUT: add4bit PORT MAP(
		a => a, 
		b => b, 
		s => s, 
		cout => cout
   );

-- *** Test Bench - User Defined Section ***
   tb : PROCESS
   BEGIN
     a<= "0100"; 
	  b<= "1101"; 
	  WAIT FOR 200
	  ns;
		a<=x"5";
		b<=x"8";
		WAIT;-- will wait forever
   END PROCESS;
-- *** End Test Bench - User Defined Section ***

END;
