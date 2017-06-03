-- Vhdl test bench created from schematic /home/l2/ferlicotdelbe/tp/ARCHI/tp6/S3.sch - Mon Nov 18 10:35:22 2013
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
ENTITY S3_S3_sch_tb IS
END S3_S3_sch_tb;
ARCHITECTURE behavioral OF S3_S3_sch_tb IS 

   COMPONENT S3
   PORT( Led	:	OUT	STD_LOGIC_VECTOR (15 DOWNTO 0); 
          clk	:	IN	STD_LOGIC; 
          switches	:	IN	STD_LOGIC_VECTOR (15 DOWNTO 0); 
          anodes	:	OUT	STD_LOGIC_VECTOR (3 DOWNTO 0); 
          sevenseg	:	OUT	STD_LOGIC_VECTOR (6 DOWNTO 0));
   END COMPONENT;

   SIGNAL Led	:	STD_LOGIC_VECTOR (15 DOWNTO 0);
   SIGNAL clk	:	STD_LOGIC;
   SIGNAL switches	:	STD_LOGIC_VECTOR (15 DOWNTO 0);
   SIGNAL anodes	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
   SIGNAL sevenseg	:	STD_LOGIC_VECTOR (6 DOWNTO 0);

BEGIN

   UUT: S3 PORT MAP(
		Led => Led, 
		clk => clk, 
		switches => switches, 
		anodes => anodes, 
		sevenseg => sevenseg
   );

-- *** Test Bench - User Defined Section ***
   tb : PROCESS
   BEGIN
      WAIT; -- will wait forever
   END PROCESS;
-- *** End Test Bench - User Defined Section ***

END;
