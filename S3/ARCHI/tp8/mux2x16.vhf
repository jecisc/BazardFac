--------------------------------------------------------------------------------
-- Copyright (c) 1995-2010 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 12.4
--  \   \         Application : sch2hdl
--  /   /         Filename : mux2x16.vhf
-- /___/   /\     Timestamp : 11/25/2013 11:45:01
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -sympath /home/l2/ferlicotdelbe/tp/ARCHI/tp7/ipcore_dir -intstyle ise -family spartan3e -flat -suppress -vhdl /home/l2/ferlicotdelbe/tp/ARCHI/tp7/mux2x16.vhf -w /home/l2/ferlicotdelbe/tp/ARCHI/tp7/mux2x16.sch
--Design Name: mux2x16
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

entity M2_1_MXILINX_mux2x16 is
   port ( D0 : in    std_logic; 
          D1 : in    std_logic; 
          S0 : in    std_logic; 
          O  : out   std_logic);
end M2_1_MXILINX_mux2x16;

architecture BEHAVIORAL of M2_1_MXILINX_mux2x16 is
   attribute BOX_TYPE   : string ;
   signal M0 : std_logic;
   signal M1 : std_logic;
   component AND2B1
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND2B1 : component is "BLACK_BOX";
   
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
   I_36_7 : AND2B1
      port map (I0=>S0,
                I1=>D0,
                O=>M0);
   
   I_36_8 : OR2
      port map (I0=>M1,
                I1=>M0,
                O=>O);
   
   I_36_9 : AND2
      port map (I0=>D1,
                I1=>S0,
                O=>M1);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity mux2x16 is
   port ( D0 : in    std_logic_vector (15 downto 0); 
          D1 : in    std_logic_vector (15 downto 0); 
          S0 : in    std_logic; 
          O  : out   std_logic_vector (15 downto 0));
end mux2x16;

architecture BEHAVIORAL of mux2x16 is
   attribute HU_SET     : string ;
   component M2_1_MXILINX_mux2x16
      port ( D0 : in    std_logic; 
             D1 : in    std_logic; 
             S0 : in    std_logic; 
             O  : out   std_logic);
   end component;
   
   attribute HU_SET of XLXI_1 : label is "XLXI_1_101";
   attribute HU_SET of XLXI_2 : label is "XLXI_2_100";
   attribute HU_SET of XLXI_3 : label is "XLXI_3_102";
   attribute HU_SET of XLXI_4 : label is "XLXI_4_103";
   attribute HU_SET of XLXI_17 : label is "XLXI_17_104";
   attribute HU_SET of XLXI_18 : label is "XLXI_18_99";
   attribute HU_SET of XLXI_19 : label is "XLXI_19_105";
   attribute HU_SET of XLXI_20 : label is "XLXI_20_106";
   attribute HU_SET of XLXI_21 : label is "XLXI_21_97";
   attribute HU_SET of XLXI_22 : label is "XLXI_22_93";
   attribute HU_SET of XLXI_23 : label is "XLXI_23_94";
   attribute HU_SET of XLXI_24 : label is "XLXI_24_92";
   attribute HU_SET of XLXI_25 : label is "XLXI_25_91";
   attribute HU_SET of XLXI_26 : label is "XLXI_26_98";
   attribute HU_SET of XLXI_27 : label is "XLXI_27_96";
   attribute HU_SET of XLXI_28 : label is "XLXI_28_95";
begin
   XLXI_1 : M2_1_MXILINX_mux2x16
      port map (D0=>D0(11),
                D1=>D1(11),
                S0=>S0,
                O=>O(11));
   
   XLXI_2 : M2_1_MXILINX_mux2x16
      port map (D0=>D0(10),
                D1=>D1(10),
                S0=>S0,
                O=>O(10));
   
   XLXI_3 : M2_1_MXILINX_mux2x16
      port map (D0=>D0(9),
                D1=>D1(9),
                S0=>S0,
                O=>O(9));
   
   XLXI_4 : M2_1_MXILINX_mux2x16
      port map (D0=>D0(8),
                D1=>D1(8),
                S0=>S0,
                O=>O(8));
   
   XLXI_17 : M2_1_MXILINX_mux2x16
      port map (D0=>D0(15),
                D1=>D1(15),
                S0=>S0,
                O=>O(15));
   
   XLXI_18 : M2_1_MXILINX_mux2x16
      port map (D0=>D0(14),
                D1=>D1(14),
                S0=>S0,
                O=>O(14));
   
   XLXI_19 : M2_1_MXILINX_mux2x16
      port map (D0=>D0(13),
                D1=>D1(13),
                S0=>S0,
                O=>O(13));
   
   XLXI_20 : M2_1_MXILINX_mux2x16
      port map (D0=>D0(12),
                D1=>D1(12),
                S0=>S0,
                O=>O(12));
   
   XLXI_21 : M2_1_MXILINX_mux2x16
      port map (D0=>D0(6),
                D1=>D1(6),
                S0=>S0,
                O=>O(6));
   
   XLXI_22 : M2_1_MXILINX_mux2x16
      port map (D0=>D0(2),
                D1=>D1(2),
                S0=>S0,
                O=>O(2));
   
   XLXI_23 : M2_1_MXILINX_mux2x16
      port map (D0=>D0(3),
                D1=>D1(3),
                S0=>S0,
                O=>O(3));
   
   XLXI_24 : M2_1_MXILINX_mux2x16
      port map (D0=>D0(1),
                D1=>D1(1),
                S0=>S0,
                O=>O(1));
   
   XLXI_25 : M2_1_MXILINX_mux2x16
      port map (D0=>D0(0),
                D1=>D1(0),
                S0=>S0,
                O=>O(0));
   
   XLXI_26 : M2_1_MXILINX_mux2x16
      port map (D0=>D0(7),
                D1=>D1(7),
                S0=>S0,
                O=>O(7));
   
   XLXI_27 : M2_1_MXILINX_mux2x16
      port map (D0=>D0(5),
                D1=>D1(5),
                S0=>S0,
                O=>O(5));
   
   XLXI_28 : M2_1_MXILINX_mux2x16
      port map (D0=>D0(4),
                D1=>D1(4),
                S0=>S0,
                O=>O(4));
   
end BEHAVIORAL;


