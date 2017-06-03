--------------------------------------------------------------------------------
-- Copyright (c) 1995-2010 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 12.4
--  \   \         Application : sch2hdl
--  /   /         Filename : toplevel.vhf
-- /___/   /\     Timestamp : 10/14/2013 11:29:19
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan3e -flat -suppress -vhdl /home/l2/ferlicotdelbe/tp/ARCHI/tp4/toplevel.vhf -w /home/l2/ferlicotdelbe/tp/ARCHI/tp4/toplevel.sch
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

entity clkdiv_MUSER_toplevel is
   port ( clk    : in    std_logic; 
          clksec : out   std_logic; 
          clk190 : out   std_logic);
end clkdiv_MUSER_toplevel;

architecture BEHAVIORAL of clkdiv_MUSER_toplevel is
   attribute BOX_TYPE   : string ;
   signal XLXN_1       : std_logic;
   signal XLXN_2       : std_logic;
   signal XLXN_3       : std_logic;
   signal XLXN_4       : std_logic;
   signal XLXN_16      : std_logic;
   signal XLXN_17      : std_logic;
   signal XLXN_18      : std_logic;
   signal XLXN_19      : std_logic;
   signal XLXN_44      : std_logic;
   signal XLXN_45      : std_logic;
   signal XLXN_46      : std_logic;
   signal XLXN_47      : std_logic;
   signal XLXN_49      : std_logic;
   signal XLXN_51      : std_logic;
   signal XLXN_52      : std_logic;
   signal XLXN_53      : std_logic;
   signal XLXN_54      : std_logic;
   signal XLXN_55      : std_logic;
   signal XLXN_56      : std_logic;
   signal XLXN_58      : std_logic;
   signal XLXN_59      : std_logic;
   signal XLXN_60      : std_logic;
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
   signal XLXN_76      : std_logic;
   signal XLXN_77      : std_logic;
   signal XLXN_78      : std_logic;
   signal XLXN_115     : std_logic;
   signal XLXN_116     : std_logic;
   signal XLXN_117     : std_logic;
   signal XLXN_118     : std_logic;
   signal XLXN_119     : std_logic;
   signal XLXN_120     : std_logic;
   signal XLXN_121     : std_logic;
   signal XLXN_122     : std_logic;
   signal XLXN_123     : std_logic;
   signal XLXN_124     : std_logic;
   signal XLXN_125     : std_logic;
   signal XLXN_126     : std_logic;
   signal XLXN_152     : std_logic;
   signal XLXN_154     : std_logic;
   signal XLXN_156     : std_logic;
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
                D=>XLXN_2,
                Q=>XLXN_1);
   
   XLXI_2 : INV
      port map (I=>XLXN_1,
                O=>XLXN_2);
   
   XLXI_3 : FD
      port map (C=>XLXN_1,
                D=>XLXN_4,
                Q=>XLXN_3);
   
   XLXI_4 : INV
      port map (I=>XLXN_3,
                O=>XLXN_4);
   
   XLXI_13 : FD
      port map (C=>XLXN_3,
                D=>XLXN_17,
                Q=>XLXN_16);
   
   XLXI_14 : INV
      port map (I=>XLXN_16,
                O=>XLXN_17);
   
   XLXI_15 : FD
      port map (C=>XLXN_16,
                D=>XLXN_19,
                Q=>XLXN_18);
   
   XLXI_16 : INV
      port map (I=>XLXN_18,
                O=>XLXN_19);
   
   XLXI_39 : FD
      port map (C=>XLXN_18,
                D=>XLXN_44,
                Q=>XLXN_46);
   
   XLXI_40 : INV
      port map (I=>XLXN_46,
                O=>XLXN_44);
   
   XLXI_41 : INV
      port map (I=>XLXN_45,
                O=>XLXN_47);
   
   XLXI_42 : FD
      port map (C=>XLXN_46,
                D=>XLXN_47,
                Q=>XLXN_45);
   
   XLXI_43 : FD
      port map (C=>XLXN_45,
                D=>XLXN_49,
                Q=>XLXN_152);
   
   XLXI_44 : INV
      port map (I=>XLXN_152,
                O=>XLXN_49);
   
   XLXI_45 : FD
      port map (C=>XLXN_154,
                D=>XLXN_52,
                Q=>XLXN_51);
   
   XLXI_46 : INV
      port map (I=>XLXN_51,
                O=>XLXN_52);
   
   XLXI_47 : FD
      port map (C=>XLXN_51,
                D=>XLXN_53,
                Q=>XLXN_55);
   
   XLXI_48 : INV
      port map (I=>XLXN_55,
                O=>XLXN_53);
   
   XLXI_49 : INV
      port map (I=>XLXN_54,
                O=>XLXN_56);
   
   XLXI_50 : FD
      port map (C=>XLXN_55,
                D=>XLXN_56,
                Q=>XLXN_54);
   
   XLXI_51 : FD
      port map (C=>XLXN_54,
                D=>XLXN_58,
                Q=>clk190_DUMMY);
   
   XLXI_52 : INV
      port map (I=>clk190_DUMMY,
                O=>XLXN_58);
   
   XLXI_53 : FD
      port map (C=>clk190_DUMMY,
                D=>XLXN_59,
                Q=>XLXN_61);
   
   XLXI_54 : INV
      port map (I=>XLXN_61,
                O=>XLXN_59);
   
   XLXI_55 : INV
      port map (I=>XLXN_60,
                O=>XLXN_62);
   
   XLXI_56 : FD
      port map (C=>XLXN_61,
                D=>XLXN_62,
                Q=>XLXN_60);
   
   XLXI_57 : FD
      port map (C=>XLXN_60,
                D=>XLXN_64,
                Q=>XLXN_63);
   
   XLXI_58 : INV
      port map (I=>XLXN_63,
                O=>XLXN_64);
   
   XLXI_59 : FD
      port map (C=>XLXN_63,
                D=>XLXN_66,
                Q=>XLXN_65);
   
   XLXI_60 : INV
      port map (I=>XLXN_65,
                O=>XLXN_66);
   
   XLXI_61 : FD
      port map (C=>XLXN_65,
                D=>XLXN_67,
                Q=>XLXN_69);
   
   XLXI_62 : INV
      port map (I=>XLXN_69,
                O=>XLXN_67);
   
   XLXI_63 : INV
      port map (I=>XLXN_68,
                O=>XLXN_70);
   
   XLXI_64 : FD
      port map (C=>XLXN_69,
                D=>XLXN_70,
                Q=>XLXN_68);
   
   XLXI_65 : FD
      port map (C=>XLXN_68,
                D=>XLXN_72,
                Q=>XLXN_71);
   
   XLXI_66 : INV
      port map (I=>XLXN_71,
                O=>XLXN_72);
   
   XLXI_67 : FD
      port map (C=>XLXN_71,
                D=>XLXN_73,
                Q=>clksec_DUMMY);
   
   XLXI_68 : INV
      port map (I=>clksec_DUMMY,
                O=>XLXN_73);
   
   XLXI_69 : INV
      port map (I=>XLXN_74,
                O=>XLXN_76);
   
   XLXI_70 : FD
      port map (C=>clksec_DUMMY,
                D=>XLXN_76,
                Q=>XLXN_74);
   
   XLXI_71 : FD
      port map (C=>XLXN_74,
                D=>XLXN_78,
                Q=>XLXN_77);
   
   XLXI_72 : INV
      port map (I=>XLXN_77,
                O=>XLXN_78);
   
   XLXI_101 : FD
      port map (C=>XLXN_152,
                D=>XLXN_116,
                Q=>XLXN_115);
   
   XLXI_102 : INV
      port map (I=>XLXN_115,
                O=>XLXN_116);
   
   XLXI_103 : FD
      port map (C=>XLXN_115,
                D=>XLXN_117,
                Q=>XLXN_119);
   
   XLXI_104 : INV
      port map (I=>XLXN_119,
                O=>XLXN_117);
   
   XLXI_105 : INV
      port map (I=>XLXN_118,
                O=>XLXN_120);
   
   XLXI_106 : FD
      port map (C=>XLXN_119,
                D=>XLXN_120,
                Q=>XLXN_118);
   
   XLXI_107 : FD
      port map (C=>XLXN_118,
                D=>XLXN_121,
                Q=>XLXN_156);
   
   XLXI_108 : INV
      port map (I=>XLXN_156,
                O=>XLXN_121);
   
   XLXI_109 : FD
      port map (C=>XLXN_156,
                D=>XLXN_122,
                Q=>XLXN_124);
   
   XLXI_110 : INV
      port map (I=>XLXN_124,
                O=>XLXN_122);
   
   XLXI_111 : INV
      port map (I=>XLXN_123,
                O=>XLXN_125);
   
   XLXI_112 : FD
      port map (C=>XLXN_124,
                D=>XLXN_125,
                Q=>XLXN_123);
   
   XLXI_113 : FD
      port map (C=>XLXN_123,
                D=>XLXN_126,
                Q=>XLXN_154);
   
   XLXI_114 : INV
      port map (I=>XLXN_154,
                O=>XLXN_126);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity compteur4_MUSER_toplevel is
   port ( clk : in    std_logic; 
          q   : out   std_logic_vector (1 downto 0));
end compteur4_MUSER_toplevel;

architecture BEHAVIORAL of compteur4_MUSER_toplevel is
   attribute BOX_TYPE   : string ;
   signal XLXN_2  : std_logic;
   signal XLXN_4  : std_logic;
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
   BasculeD_0 : FD
      port map (C=>clk,
                D=>XLXN_2,
                Q=>q_DUMMY(0));
   
   BasculeD_1 : FD
      port map (C=>XLXN_2,
                D=>XLXN_4,
                Q=>q_DUMMY(1));
   
   XLXI_2 : INV
      port map (I=>q_DUMMY(0),
                O=>XLXN_2);
   
   XLXI_4 : INV
      port map (I=>q_DUMMY(1),
                O=>XLXN_4);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity toplevel is
   port ( clk : in    std_logic; 
          Led : out   std_logic_vector (1 downto 0));
end toplevel;

architecture BEHAVIORAL of toplevel is
   signal XLXN_1 : std_logic;
   component compteur4_MUSER_toplevel
      port ( clk : in    std_logic; 
             q   : out   std_logic_vector (1 downto 0));
   end component;
   
   component clkdiv_MUSER_toplevel
      port ( clk    : in    std_logic; 
             clksec : out   std_logic; 
             clk190 : out   std_logic);
   end component;
   
begin
   XLXI_1 : compteur4_MUSER_toplevel
      port map (clk=>XLXN_1,
                q(1 downto 0)=>Led(1 downto 0));
   
   XLXI_2 : clkdiv_MUSER_toplevel
      port map (clk=>clk,
                clksec=>XLXN_1,
                clk190=>open);
   
end BEHAVIORAL;


