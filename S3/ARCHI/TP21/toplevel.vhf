--------------------------------------------------------------------------------
-- Copyright (c) 1995-2010 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 12.4
--  \   \         Application : sch2hdl
--  /   /         Filename : toplevel.vhf
-- /___/   /\     Timestamp : 09/30/2013 11:14:18
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan3e -flat -suppress -vhdl /home/l2/ferlicotdelbe/tp/ARCHI/toplevel.vhf -w /home/l2/ferlicotdelbe/tp/ARCHI/toplevel.sch
--Design Name: toplevel
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

entity circuit2_MUSER_toplevel is
   port ( a : in    std_logic; 
          b : in    std_logic; 
          c : in    std_logic; 
          t : out   std_logic);
end circuit2_MUSER_toplevel;

architecture BEHAVIORAL of circuit2_MUSER_toplevel is
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
   
   component NOR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of NOR2 : component is "BLACK_BOX";
   
begin
   XLXI_1 : INV
      port map (I=>b,
                O=>XLXN_1);
   
   XLXI_2 : INV
      port map (I=>c,
                O=>XLXN_2);
   
   XLXI_3 : NOR2
      port map (I0=>XLXN_2,
                I1=>XLXN_1,
                O=>XLXN_3);
   
   XLXI_4 : NOR2
      port map (I0=>XLXN_3,
                I1=>a,
                O=>XLXN_4);
   
   XLXI_5 : NOR2
      port map (I0=>XLXN_5,
                I1=>XLXN_4,
                O=>t);
   
   XLXI_6 : NOR2
      port map (I0=>c,
                I1=>b,
                O=>XLXN_5);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity circuit1_MUSER_toplevel is
   port ( a : in    std_logic; 
          b : in    std_logic; 
          c : in    std_logic; 
          s : out   std_logic);
end circuit1_MUSER_toplevel;

architecture BEHAVIORAL of circuit1_MUSER_toplevel is
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



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity toplevel is
   port ( a : in    std_logic; 
          b : in    std_logic; 
          c : in    std_logic; 
          s : out   std_logic; 
          t : out   std_logic);
end toplevel;

architecture BEHAVIORAL of toplevel is
   component circuit1_MUSER_toplevel
      port ( b : in    std_logic; 
             c : in    std_logic; 
             a : in    std_logic; 
             s : out   std_logic);
   end component;
   
   component circuit2_MUSER_toplevel
      port ( a : in    std_logic; 
             b : in    std_logic; 
             c : in    std_logic; 
             t : out   std_logic);
   end component;
   
begin
   XLXI_1 : circuit1_MUSER_toplevel
      port map (a=>a,
                b=>b,
                c=>c,
                s=>s);
   
   XLXI_2 : circuit2_MUSER_toplevel
      port map (a=>a,
                b=>b,
                c=>c,
                t=>t);
   
end BEHAVIORAL;


