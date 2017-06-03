--------------------------------------------------------------------------------
-- Copyright (c) 1995-2010 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 12.4
--  \   \         Application : sch2hdl
--  /   /         Filename : mux2x16.vhf
-- /___/   /\     Timestamp : 12/16/2013 10:33:26
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -sympath /home/l2/verheyde/Cours/Archi/TP/TP09/ipcore_dir -intstyle ise -family spartan3e -flat -suppress -vhdl /home/l2/verheyde/Cours/Archi/TP/TP09/mux2x16.vhf -w /home/l2/verheyde/Cours/Archi/TP/TP09/mux2x16.sch
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
   
   attribute HU_SET of XLXI_1 : label is "XLXI_1_56";
   attribute HU_SET of XLXI_2 : label is "XLXI_2_57";
   attribute HU_SET of XLXI_3 : label is "XLXI_3_58";
   attribute HU_SET of XLXI_4 : label is "XLXI_4_59";
   attribute HU_SET of XLXI_5 : label is "XLXI_5_60";
   attribute HU_SET of XLXI_6 : label is "XLXI_6_61";
   attribute HU_SET of XLXI_7 : label is "XLXI_7_62";
   attribute HU_SET of XLXI_8 : label is "XLXI_8_63";
   attribute HU_SET of XLXI_17 : label is "XLXI_17_71";
   attribute HU_SET of XLXI_18 : label is "XLXI_18_64";
   attribute HU_SET of XLXI_19 : label is "XLXI_19_65";
   attribute HU_SET of XLXI_20 : label is "XLXI_20_66";
   attribute HU_SET of XLXI_21 : label is "XLXI_21_67";
   attribute HU_SET of XLXI_22 : label is "XLXI_22_68";
   attribute HU_SET of XLXI_23 : label is "XLXI_23_69";
   attribute HU_SET of XLXI_24 : label is "XLXI_24_70";
begin
   XLXI_1 : M2_1_MXILINX_mux2x16
      port map (D0=>D0(8),
                D1=>D1(8),
                S0=>S0,
                O=>O(8));
   
   XLXI_2 : M2_1_MXILINX_mux2x16
      port map (D0=>D0(9),
                D1=>D1(9),
                S0=>S0,
                O=>O(9));
   
   XLXI_3 : M2_1_MXILINX_mux2x16
      port map (D0=>D0(10),
                D1=>D1(10),
                S0=>S0,
                O=>O(10));
   
   XLXI_4 : M2_1_MXILINX_mux2x16
      port map (D0=>D0(11),
                D1=>D1(11),
                S0=>S0,
                O=>O(11));
   
   XLXI_5 : M2_1_MXILINX_mux2x16
      port map (D0=>D0(12),
                D1=>D1(12),
                S0=>S0,
                O=>O(12));
   
   XLXI_6 : M2_1_MXILINX_mux2x16
      port map (D0=>D0(13),
                D1=>D1(13),
                S0=>S0,
                O=>O(13));
   
   XLXI_7 : M2_1_MXILINX_mux2x16
      port map (D0=>D0(14),
                D1=>D1(14),
                S0=>S0,
                O=>O(14));
   
   XLXI_8 : M2_1_MXILINX_mux2x16
      port map (D0=>D0(15),
                D1=>D1(15),
                S0=>S0,
                O=>O(15));
   
   XLXI_17 : M2_1_MXILINX_mux2x16
      port map (D0=>D0(0),
                D1=>D1(0),
                S0=>S0,
                O=>O(0));
   
   XLXI_18 : M2_1_MXILINX_mux2x16
      port map (D0=>D0(1),
                D1=>D1(1),
                S0=>S0,
                O=>O(1));
   
   XLXI_19 : M2_1_MXILINX_mux2x16
      port map (D0=>D0(2),
                D1=>D1(2),
                S0=>S0,
                O=>O(2));
   
   XLXI_20 : M2_1_MXILINX_mux2x16
      port map (D0=>D0(3),
                D1=>D1(3),
                S0=>S0,
                O=>O(3));
   
   XLXI_21 : M2_1_MXILINX_mux2x16
      port map (D0=>D0(4),
                D1=>D1(4),
                S0=>S0,
                O=>O(4));
   
   XLXI_22 : M2_1_MXILINX_mux2x16
      port map (D0=>D0(5),
                D1=>D1(5),
                S0=>S0,
                O=>O(5));
   
   XLXI_23 : M2_1_MXILINX_mux2x16
      port map (D0=>D0(6),
                D1=>D1(6),
                S0=>S0,
                O=>O(6));
   
   XLXI_24 : M2_1_MXILINX_mux2x16
      port map (D0=>D0(7),
                D1=>D1(7),
                S0=>S0,
                O=>O(7));
   
end BEHAVIORAL;


