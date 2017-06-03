--------------------------------------------------------------------------------
-- Copyright (c) 1995-2010 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 12.4
--  \   \         Application : sch2hdl
--  /   /         Filename : compteur4_drc.vhf
-- /___/   /\     Timestamp : 11/18/2013 11:11:54
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: /usr/local/Xilinx/12.4/ISE_DS/ISE/bin/lin/unwrapped/sch2hdl -intstyle ise -family spartan3e -flat -suppress -vhdl compteur4_drc.vhf -w /home/l2/ferlicotdelbe/tp/ARCHI/tp6/compteur4.sch
--Design Name: compteur4
--Device: spartan3e
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity compteur4 is
   port ( clk : in    std_logic; 
          q   : out   std_logic_vector (1 downto 0));
end compteur4;

architecture BEHAVIORAL of compteur4 is
   attribute BOX_TYPE   : string ;
   signal XLXN_2  : std_logic;
   signal XLXN_13 : std_logic;
   signal q_DUMMY : std_logic_vector (1 downto 0);
   component FD
      generic( INIT : bit :=  '0');
      port ( C : in    std_logic; 
             D : in    std_logic; 
             Q : out   std_logic);
   end component;
   attribute BOX_TYPE of FD : component is "BLACK_BOX";
   
   component INV
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of INV : component is "BLACK_BOX";
   
begin
   q(1 downto 0) <= q_DUMMY(1 downto 0);
   BaculeD_0 : FD
      port map (C=>clk,
                D=>XLXN_2,
                Q=>q_DUMMY(0));
   
   BaculeD_1 : FD
      port map (C=>XLXN_2,
                D=>XLXN_13,
                Q=>q_DUMMY(1));
   
   XLXI_3 : INV
      port map (I=>q_DUMMY(0),
                O=>XLXN_2);
   
   XLXI_13 : INV
      port map (I=>q_DUMMY(1),
                O=>XLXN_13);
   
end BEHAVIORAL;


