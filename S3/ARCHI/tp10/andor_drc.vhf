--------------------------------------------------------------------------------
-- Copyright (c) 1995-2010 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 12.4
--  \   \         Application : sch2hdl
--  /   /         Filename : andor_drc.vhf
-- /___/   /\     Timestamp : 12/09/2013 11:04:36
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: /usr/local/Xilinx/12.4/ISE_DS/ISE/bin/lin/unwrapped/sch2hdl -sympath /home/l2/ferlicotdelbe/tp/ARCHI/tp9/ipcore_dir -intstyle ise -family spartan3e -flat -suppress -vhdl andor_drc.vhf -w /home/l2/ferlicotdelbe/tp/ARCHI/tp9/andor.sch
--Design Name: andor
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

entity andor is
   port ( a    : in    std_logic_vector (15 downto 0); 
          b    : in    std_logic_vector (15 downto 0); 
          sand : out   std_logic_vector (15 downto 0); 
          sor  : out   std_logic_vector (15 downto 0));
end andor;

architecture BEHAVIORAL of andor is
   attribute BOX_TYPE   : string ;
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
      port map (I0=>a(0),
                I1=>b(0),
                O=>sand(0));
   
   XLXI_2 : AND2
      port map (I0=>a(1),
                I1=>b(1),
                O=>sand(1));
   
   XLXI_3 : AND2
      port map (I0=>a(2),
                I1=>b(2),
                O=>sand(2));
   
   XLXI_4 : AND2
      port map (I0=>a(3),
                I1=>b(3),
                O=>sand(3));
   
   XLXI_5 : AND2
      port map (I0=>a(4),
                I1=>b(4),
                O=>sand(4));
   
   XLXI_6 : AND2
      port map (I0=>a(5),
                I1=>b(5),
                O=>sand(5));
   
   XLXI_7 : AND2
      port map (I0=>a(6),
                I1=>b(6),
                O=>sand(6));
   
   XLXI_8 : AND2
      port map (I0=>a(7),
                I1=>b(7),
                O=>sand(7));
   
   XLXI_9 : AND2
      port map (I0=>a(8),
                I1=>b(8),
                O=>sand(8));
   
   XLXI_10 : AND2
      port map (I0=>a(9),
                I1=>b(9),
                O=>sand(9));
   
   XLXI_11 : AND2
      port map (I0=>a(10),
                I1=>b(10),
                O=>sand(10));
   
   XLXI_12 : AND2
      port map (I0=>a(11),
                I1=>b(11),
                O=>sand(11));
   
   XLXI_13 : AND2
      port map (I0=>a(12),
                I1=>b(12),
                O=>sand(12));
   
   XLXI_14 : AND2
      port map (I0=>a(13),
                I1=>b(13),
                O=>sand(13));
   
   XLXI_15 : AND2
      port map (I0=>a(14),
                I1=>b(14),
                O=>sand(14));
   
   XLXI_16 : AND2
      port map (I0=>a(15),
                I1=>b(15),
                O=>sand(15));
   
   XLXI_17 : OR2
      port map (I0=>b(0),
                I1=>a(0),
                O=>sor(0));
   
   XLXI_18 : OR2
      port map (I0=>b(1),
                I1=>a(1),
                O=>sor(1));
   
   XLXI_19 : OR2
      port map (I0=>b(2),
                I1=>a(2),
                O=>sor(2));
   
   XLXI_20 : OR2
      port map (I0=>b(3),
                I1=>a(3),
                O=>sor(3));
   
   XLXI_21 : OR2
      port map (I0=>b(4),
                I1=>a(4),
                O=>sor(4));
   
   XLXI_22 : OR2
      port map (I0=>b(5),
                I1=>a(5),
                O=>sor(5));
   
   XLXI_23 : OR2
      port map (I0=>b(6),
                I1=>a(6),
                O=>sor(6));
   
   XLXI_24 : OR2
      port map (I0=>b(7),
                I1=>a(7),
                O=>sor(7));
   
   XLXI_25 : OR2
      port map (I0=>b(8),
                I1=>a(8),
                O=>sor(8));
   
   XLXI_26 : OR2
      port map (I0=>b(9),
                I1=>a(9),
                O=>sor(9));
   
   XLXI_27 : OR2
      port map (I0=>b(10),
                I1=>a(10),
                O=>sor(10));
   
   XLXI_28 : OR2
      port map (I0=>b(11),
                I1=>a(11),
                O=>sor(11));
   
   XLXI_29 : OR2
      port map (I0=>b(12),
                I1=>a(12),
                O=>sor(12));
   
   XLXI_30 : OR2
      port map (I0=>b(13),
                I1=>a(13),
                O=>sor(13));
   
   XLXI_31 : OR2
      port map (I0=>b(14),
                I1=>a(14),
                O=>sor(14));
   
   XLXI_32 : OR2
      port map (I0=>b(15),
                I1=>a(15),
                O=>sor(15));
   
end BEHAVIORAL;


