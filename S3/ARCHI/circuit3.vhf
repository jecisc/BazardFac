--------------------------------------------------------------------------------
-- Copyright (c) 1995-2010 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 12.4
--  \   \         Application : sch2hdl
--  /   /         Filename : circuit3.vhf
-- /___/   /\     Timestamp : 09/30/2013 11:47:33
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan3e -flat -suppress -vhdl /home/l2/ferlicotdelbe/tp/ARCHI/circuit3.vhf -w /home/l2/ferlicotdelbe/tp/ARCHI/circuit3.sch
--Design Name: circuit3
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

entity circuit3 is
   port ( a : in    std_logic; 
          b : in    std_logic; 
          c : in    std_logic; 
          s : out   std_logic);
end circuit3;

architecture BEHAVIORAL of circuit3 is
   attribute BOX_TYPE   : string ;
   signal XLXN_22 : std_logic;
   signal XLXN_23 : std_logic;
   signal XLXN_24 : std_logic;
   component OR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR2 : component is "BLACK_BOX";
   
   component AND2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND2 : component is "BLACK_BOX";
   
begin
   XLXI_16 : OR2
      port map (I0=>b,
                I1=>a,
                O=>XLXN_22);
   
   XLXI_17 : OR2
      port map (I0=>XLXN_24,
                I1=>XLXN_23,
                O=>s);
   
   XLXI_18 : AND2
      port map (I0=>c,
                I1=>XLXN_22,
                O=>XLXN_23);
   
   XLXI_19 : AND2
      port map (I0=>b,
                I1=>a,
                O=>XLXN_24);
   
end BEHAVIORAL;


