--------------------------------------------------------------------------------
-- Copyright (c) 1995-2010 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 12.4
--  \   \         Application : sch2hdl
--  /   /         Filename : connecteur_drc.vhf
-- /___/   /\     Timestamp : 11/04/2013 10:43:16
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: /usr/local/Xilinx/12.4/ISE_DS/ISE/bin/lin/unwrapped/sch2hdl -intstyle ise -family spartan3e -flat -suppress -vhdl connecteur_drc.vhf -w /home/l2/ferlicotdelbe/tp/ARCHI/tp6/connecteur.sch
--Design Name: connecteur
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

entity connecteur is
   port ( connect : in    std_logic; 
          Din     : in    std_logic; 
          R       : in    std_logic; 
          Dout    : out   std_logic);
end connecteur;

architecture BEHAVIORAL of connecteur is
   attribute BOX_TYPE   : string ;
   signal XLXN_1  : std_logic;
   component AND2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND2 : component is "BLACK_BOX";
   
   component OR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR2 : component is "BLACK_BOX";
   
begin
   XLXI_1 : AND2
      port map (I0=>R,
                I1=>connect,
                O=>XLXN_1);
   
   XLXI_2 : OR2
      port map (I0=>Din,
                I1=>XLXN_1,
                O=>Dout);
   
end BEHAVIORAL;


