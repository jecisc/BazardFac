-- Vhdl test bench created from schematic C:\Users\Jean-Luc Dekeyser\mes_lecons\TP6\toplevel.sch - Wed Aug 28 08:30:52 2013
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
ENTITY toplevel_toplevel_sch_tb IS
END toplevel_toplevel_sch_tb;
ARCHITECTURE behavioral OF toplevel_toplevel_sch_tb IS 

   COMPONENT toplevel
   PORT( clk	:	IN	STD_LOGIC; 
          sevenseg	:	OUT	STD_LOGIC_VECTOR (6 DOWNTO 0); 
          anodes	:	OUT	STD_LOGIC_VECTOR (3 DOWNTO 0); 
          switches	:	IN	STD_LOGIC_VECTOR (7 DOWNTO 0); 
          led	:	OUT	STD_LOGIC_VECTOR (7 DOWNTO 0));
   END COMPONENT;

   SIGNAL clk	:	STD_LOGIC :='0';
   SIGNAL sevenseg	:	STD_LOGIC_VECTOR (6 DOWNTO 0);
   SIGNAL anodes	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
   SIGNAL switches	:	STD_LOGIC_VECTOR (7 DOWNTO 0) := x"12";
   SIGNAL led	:	STD_LOGIC_VECTOR (7 DOWNTO 0);

BEGIN

   UUT: toplevel PORT MAP(
		clk => clk, 
		sevenseg => sevenseg, 
		anodes => anodes, 
		switches => switches, 
		led => led
   );

-- *** Test Bench - User Defined Section ***


   tb : PROCESS
   BEGIN
		wait for 10 ns;
		clk<= not clk;
   END PROCESS;

-- *** End Test Bench - User Defined Section ***

END;
