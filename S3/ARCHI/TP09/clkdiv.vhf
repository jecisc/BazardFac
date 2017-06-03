--------------------------------------------------------------------------------
-- Copyright (c) 1995-2010 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 12.4
--  \   \         Application : sch2hdl
--  /   /         Filename : clkdiv.vhf
-- /___/   /\     Timestamp : 12/16/2013 10:33:25
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -sympath /home/l2/verheyde/Cours/Archi/TP/TP09/ipcore_dir -intstyle ise -family spartan3e -flat -suppress -vhdl /home/l2/verheyde/Cours/Archi/TP/TP09/clkdiv.vhf -w /home/l2/verheyde/Cours/Archi/TP/TP09/clkdiv.sch
--Design Name: clkdiv
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

entity clkdiv is
   port ( clk    : in    std_logic; 
          clksec : out   std_logic; 
          clk190 : out   std_logic);
end clkdiv;

architecture BEHAVIORAL of clkdiv is
   attribute BOX_TYPE   : string ;
   signal XLXN_1       : std_logic;
   signal XLXN_2       : std_logic;
   signal XLXN_3       : std_logic;
   signal XLXN_4       : std_logic;
   signal XLXN_12      : std_logic;
   signal XLXN_13      : std_logic;
   signal XLXN_14      : std_logic;
   signal XLXN_15      : std_logic;
   signal XLXN_16      : std_logic;
   signal XLXN_17      : std_logic;
   signal XLXN_18      : std_logic;
   signal XLXN_19      : std_logic;
   signal XLXN_28      : std_logic;
   signal XLXN_29      : std_logic;
   signal XLXN_61      : std_logic;
   signal XLXN_62      : std_logic;
   signal XLXN_63      : std_logic;
   signal XLXN_64      : std_logic;
   signal XLXN_65      : std_logic;
   signal XLXN_66      : std_logic;
   signal XLXN_67      : std_logic;
   signal XLXN_68      : std_logic;
   signal XLXN_69      : std_logic;
   signal XLXN_70      : std_logic;
   signal XLXN_71      : std_logic;
   signal XLXN_72      : std_logic;
   signal XLXN_73      : std_logic;
   signal XLXN_74      : std_logic;
   signal XLXN_75      : std_logic;
   signal XLXN_76      : std_logic;
   signal XLXN_77      : std_logic;
   signal XLXN_78      : std_logic;
   signal XLXN_80      : std_logic;
   signal XLXN_81      : std_logic;
   signal XLXN_82      : std_logic;
   signal XLXN_83      : std_logic;
   signal XLXN_84      : std_logic;
   signal XLXN_85      : std_logic;
   signal XLXN_86      : std_logic;
   signal XLXN_87      : std_logic;
   signal XLXN_88      : std_logic;
   signal XLXN_89      : std_logic;
   signal XLXN_90      : std_logic;
   signal XLXN_92      : std_logic;
   signal XLXN_93      : std_logic;
   signal XLXN_94      : std_logic;
   signal XLXN_95      : std_logic;
   signal XLXN_96      : std_logic;
   signal XLXN_97      : std_logic;
   signal XLXN_98      : std_logic;
   signal XLXN_100     : std_logic;
   signal XLXN_102     : std_logic;
   signal xxx          : std_logic;
   signal xyx          : std_logic;
   signal clk190_DUMMY : std_logic;
   signal clksec_DUMMY : std_logic;
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
   clksec <= clksec_DUMMY;
   clk190 <= clk190_DUMMY;
   XLXI_1 : FD
      port map (C=>clk,
                D=>XLXN_1,
                Q=>XLXN_2);
   
   XLXI_2 : INV
      port map (I=>XLXN_2,
                O=>XLXN_1);
   
   XLXI_3 : FD
      port map (C=>XLXN_2,
                D=>XLXN_3,
                Q=>XLXN_4);
   
   XLXI_4 : INV
      port map (I=>XLXN_4,
                O=>XLXN_3);
   
   XLXI_9 : INV
      port map (I=>XLXN_12,
                O=>XLXN_13);
   
   XLXI_10 : FD
      port map (C=>XLXN_14,
                D=>XLXN_13,
                Q=>XLXN_12);
   
   XLXI_11 : INV
      port map (I=>XLXN_14,
                O=>XLXN_15);
   
   XLXI_12 : FD
      port map (C=>XLXN_4,
                D=>XLXN_15,
                Q=>XLXN_14);
   
   XLXI_13 : INV
      port map (I=>XLXN_16,
                O=>XLXN_17);
   
   XLXI_14 : FD
      port map (C=>XLXN_18,
                D=>XLXN_17,
                Q=>XLXN_16);
   
   XLXI_15 : INV
      port map (I=>XLXN_18,
                O=>XLXN_19);
   
   XLXI_16 : FD
      port map (C=>XLXN_12,
                D=>XLXN_19,
                Q=>XLXN_18);
   
   XLXI_25 : INV
      port map (I=>XLXN_28,
                O=>XLXN_29);
   
   XLXI_26 : FD
      port map (C=>XLXN_16,
                D=>XLXN_29,
                Q=>XLXN_28);
   
   XLXI_55 : INV
      port map (I=>XLXN_61,
                O=>XLXN_62);
   
   XLXI_56 : FD
      port map (C=>XLXN_63,
                D=>XLXN_62,
                Q=>XLXN_61);
   
   XLXI_57 : INV
      port map (I=>XLXN_63,
                O=>XLXN_64);
   
   XLXI_58 : FD
      port map (C=>XLXN_28,
                D=>XLXN_64,
                Q=>XLXN_63);
   
   XLXI_59 : INV
      port map (I=>XLXN_65,
                O=>XLXN_66);
   
   XLXI_60 : FD
      port map (C=>XLXN_67,
                D=>XLXN_66,
                Q=>XLXN_65);
   
   XLXI_61 : INV
      port map (I=>XLXN_67,
                O=>XLXN_68);
   
   XLXI_62 : FD
      port map (C=>XLXN_61,
                D=>XLXN_68,
                Q=>XLXN_67);
   
   XLXI_63 : INV
      port map (I=>XLXN_69,
                O=>XLXN_70);
   
   XLXI_64 : FD
      port map (C=>XLXN_71,
                D=>XLXN_70,
                Q=>XLXN_69);
   
   XLXI_65 : INV
      port map (I=>XLXN_71,
                O=>XLXN_72);
   
   XLXI_66 : FD
      port map (C=>XLXN_65,
                D=>XLXN_72,
                Q=>XLXN_71);
   
   XLXI_67 : INV
      port map (I=>XLXN_73,
                O=>XLXN_74);
   
   XLXI_68 : FD
      port map (C=>XLXN_69,
                D=>XLXN_74,
                Q=>XLXN_73);
   
   XLXI_69 : INV
      port map (I=>XLXN_75,
                O=>XLXN_76);
   
   XLXI_70 : FD
      port map (C=>XLXN_77,
                D=>XLXN_76,
                Q=>XLXN_75);
   
   XLXI_71 : INV
      port map (I=>XLXN_77,
                O=>XLXN_78);
   
   XLXI_72 : FD
      port map (C=>XLXN_73,
                D=>XLXN_78,
                Q=>XLXN_77);
   
   XLXI_73 : INV
      port map (I=>clk190_DUMMY,
                O=>XLXN_80);
   
   XLXI_74 : FD
      port map (C=>XLXN_81,
                D=>XLXN_80,
                Q=>clk190_DUMMY);
   
   XLXI_75 : INV
      port map (I=>XLXN_81,
                O=>XLXN_82);
   
   XLXI_76 : FD
      port map (C=>XLXN_75,
                D=>XLXN_82,
                Q=>XLXN_81);
   
   XLXI_77 : INV
      port map (I=>XLXN_83,
                O=>XLXN_84);
   
   XLXI_78 : FD
      port map (C=>XLXN_85,
                D=>XLXN_84,
                Q=>XLXN_83);
   
   XLXI_79 : INV
      port map (I=>XLXN_85,
                O=>XLXN_86);
   
   XLXI_80 : FD
      port map (C=>clk190_DUMMY,
                D=>XLXN_86,
                Q=>XLXN_85);
   
   XLXI_81 : INV
      port map (I=>XLXN_87,
                O=>XLXN_88);
   
   XLXI_82 : FD
      port map (C=>XLXN_83,
                D=>XLXN_88,
                Q=>XLXN_87);
   
   XLXI_83 : INV
      port map (I=>XLXN_89,
                O=>XLXN_90);
   
   XLXI_84 : FD
      port map (C=>xyx,
                D=>XLXN_90,
                Q=>XLXN_89);
   
   XLXI_85 : INV
      port map (I=>xyx,
                O=>XLXN_92);
   
   XLXI_86 : FD
      port map (C=>XLXN_87,
                D=>XLXN_92,
                Q=>xyx);
   
   XLXI_87 : INV
      port map (I=>XLXN_93,
                O=>XLXN_94);
   
   XLXI_88 : FD
      port map (C=>XLXN_95,
                D=>XLXN_94,
                Q=>XLXN_93);
   
   XLXI_89 : INV
      port map (I=>XLXN_95,
                O=>XLXN_96);
   
   XLXI_90 : FD
      port map (C=>XLXN_89,
                D=>XLXN_96,
                Q=>XLXN_95);
   
   XLXI_91 : INV
      port map (I=>XLXN_97,
                O=>XLXN_98);
   
   XLXI_92 : FD
      port map (C=>clksec_DUMMY,
                D=>XLXN_98,
                Q=>XLXN_97);
   
   XLXI_93 : INV
      port map (I=>clksec_DUMMY,
                O=>XLXN_100);
   
   XLXI_94 : FD
      port map (C=>XLXN_93,
                D=>XLXN_100,
                Q=>clksec_DUMMY);
   
   XLXI_95 : INV
      port map (I=>xxx,
                O=>XLXN_102);
   
   XLXI_96 : FD
      port map (C=>XLXN_97,
                D=>XLXN_102,
                Q=>xxx);
   
end BEHAVIORAL;


