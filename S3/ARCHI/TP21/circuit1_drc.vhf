--------------------------------------------------------------------------------
-- Copyright (c) 1995-2010 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 12.4
--  \   \         Application : sch2hdl
--  /   /         Filename : circuit1_drc.vhf
-- /___/   /\     Timestamp : 09/30/2013 11:08:15
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: /usr/local/Xilinx/12.4/ISE_DS/ISE/bin/lin/unwrapped/sch2hdl -intstyle ise -family spartan3e -flat -suppress -vhdl circuit1_drc.vhf -w /home/l2/ferlicotdelbe/tp/ARCHI/circuit1.sch
--Design Name: circuit1
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

entity circuit1 is
   port ( a : in    std_logic; 
          b : in    std_logic; 
          c : in    std_logic; 
          s : out   std_logic);
end circuit1;

architecture BEHAVIORAL of circuit1 is
   attribute BOX_TYPE   : string ;
   signal XLXN_1 : std_logic;
   signal XLXN_2 : std_logic;
   signal XLXN_3 : std_logic;
   signal XLXN_4 : std_logic;
   signal XLXN_5 : std_logic;
   component INV
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of INV : component is "BLACK_BOX";
   
   component NAND2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of NAND2 : component is "BLACK_BOX";
   
begin
   XLXI_1 : INV
      port map (I=>b,
                O=>XLXN_1);
   
   XLXI_2 : INV
      port map (I=>c,
                O=>XLXN_2);
   
   XLXI_3 : NAND2
      port map (I0=>XLXN_2,
                I1=>XLXN_1,
                O=>XLXN_3);
   
   XLXI_4 : NAND2
      port map (I0=>XLXN_3,
                I1=>a,
                O=>XLXN_4);
   
   XLXI_5 : NAND2
      port map (I0=>c,
                I1=>b,
                O=>XLXN_5);
   
   XLXI_6 : NAND2
      port map (I0=>XLXN_5,
                I1=>XLXN_4,
                O=>s);
   
end BEHAVIORAL;


