-- Vhdl test bench created from schematic C:\Users\Jean-Luc Dekeyser\mes_lecons\TP6\connecteur16.sch - Sat Aug 24 09:11:59 2013
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
ENTITY connecteur16_connecteur16_sch_tb IS
END connecteur16_connecteur16_sch_tb;
ARCHITECTURE behavioral OF connecteur16_connecteur16_sch_tb IS 

   COMPONENT connecteur16
   PORT( Din	:	IN	STD_LOGIC_VECTOR (15 DOWNTO 0); 
          R	:	IN	STD_LOGIC_VECTOR (15 DOWNTO 0); 
          connect	:	IN	STD_LOGIC; 
          Dout	:	OUT	STD_LOGIC_VECTOR (15 DOWNTO 0));
   END COMPONENT;

   SIGNAL Din	:	STD_LOGIC_VECTOR (15 DOWNTO 0):=x"1234";
   SIGNAL R	:	STD_LOGIC_VECTOR (15 DOWNTO 0):=x"5678";
   SIGNAL connect	:	STD_LOGIC:='0';
   SIGNAL Dout	:	STD_LOGIC_VECTOR (15 DOWNTO 0);

BEGIN

   UUT: connecteur16 PORT MAP(
		Din => Din, 
		R => R, 
		connect => connect, 
		Dout => Dout
   );

-- *** Test Bench - User Defined Section ***
   tb : PROCESS
   BEGIN
		connect<= '1' after 100 ns;
		Din <= x"0000" after 100 ns;
      WAIT; -- will wait forever
   END PROCESS;
-- *** End Test Bench - User Defined Section ***

END;
