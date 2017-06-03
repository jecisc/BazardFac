--------------------------------------------------------------------------------
-- Copyright (c) 1995-2010 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 12.4
--  \   \         Application : sch2hdl
--  /   /         Filename : toplevel.vhf
-- /___/   /\     Timestamp : 11/18/2013 11:09:44
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan3e -flat -suppress -vhdl /home/l2/ferlicotdelbe/tp/ARCHI/tp6/toplevel.vhf -w /home/l2/ferlicotdelbe/tp/ARCHI/tp6/toplevel.sch
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

entity IBUF8_MXILINX_toplevel is
   port ( I : in    std_logic_vector (7 downto 0); 
          O : out   std_logic_vector (7 downto 0));
end IBUF8_MXILINX_toplevel;

architecture BEHAVIORAL of IBUF8_MXILINX_toplevel is
   attribute IOSTANDARD       : string ;
   attribute IBUF_DELAY_VALUE : string ;
   attribute IFD_DELAY_VALUE  : string ;
   attribute BOX_TYPE         : string ;
   component IBUF
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute IOSTANDARD of IBUF : component is "DEFAULT";
   attribute IBUF_DELAY_VALUE of IBUF : component is "0";
   attribute IFD_DELAY_VALUE of IBUF : component is "AUTO";
   attribute BOX_TYPE of IBUF : component is "BLACK_BOX";
   
begin
   I_36_30 : IBUF
      port map (I=>I(4),
                O=>O(4));
   
   I_36_31 : IBUF
      port map (I=>I(5),
                O=>O(5));
   
   I_36_32 : IBUF
      port map (I=>I(6),
                O=>O(6));
   
   I_36_33 : IBUF
      port map (I=>I(7),
                O=>O(7));
   
   I_36_34 : IBUF
      port map (I=>I(3),
                O=>O(3));
   
   I_36_35 : IBUF
      port map (I=>I(2),
                O=>O(2));
   
   I_36_36 : IBUF
      port map (I=>I(1),
                O=>O(1));
   
   I_36_37 : IBUF
      port map (I=>I(0),
                O=>O(0));
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity OBUF8_MXILINX_toplevel is
   port ( I : in    std_logic_vector (7 downto 0); 
          O : out   std_logic_vector (7 downto 0));
end OBUF8_MXILINX_toplevel;

architecture BEHAVIORAL of OBUF8_MXILINX_toplevel is
   attribute IOSTANDARD : string ;
   attribute SLEW       : string ;
   attribute DRIVE      : string ;
   attribute BOX_TYPE   : string ;
   component OBUF
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute IOSTANDARD of OBUF : component is "DEFAULT";
   attribute SLEW of OBUF : component is "SLOW";
   attribute DRIVE of OBUF : component is "12";
   attribute BOX_TYPE of OBUF : component is "BLACK_BOX";
   
begin
   I_36_30 : OBUF
      port map (I=>I(0),
                O=>O(0));
   
   I_36_31 : OBUF
      port map (I=>I(1),
                O=>O(1));
   
   I_36_32 : OBUF
      port map (I=>I(2),
                O=>O(2));
   
   I_36_33 : OBUF
      port map (I=>I(3),
                O=>O(3));
   
   I_36_34 : OBUF
      port map (I=>I(7),
                O=>O(7));
   
   I_36_35 : OBUF
      port map (I=>I(6),
                O=>O(6));
   
   I_36_36 : OBUF
      port map (I=>I(5),
                O=>O(5));
   
   I_36_37 : OBUF
      port map (I=>I(4),
                O=>O(4));
   
end BEHAVIORAL;



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



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity connecteur_MUSER_toplevel is
   port ( connect : in    std_logic; 
          Din     : in    std_logic; 
          R       : in    std_logic; 
          Dout    : out   std_logic);
end connecteur_MUSER_toplevel;

architecture BEHAVIORAL of connecteur_MUSER_toplevel is
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



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity connect16_MUSER_toplevel is
   port ( connect : in    std_logic; 
          Din     : in    std_logic_vector (15 downto 0); 
          R       : in    std_logic_vector (15 downto 0); 
          Dout    : out   std_logic_vector (15 downto 0));
end connect16_MUSER_toplevel;

architecture BEHAVIORAL of connect16_MUSER_toplevel is
   component connecteur_MUSER_toplevel
      port ( Din     : in    std_logic; 
             R       : in    std_logic; 
             connect : in    std_logic; 
             Dout    : out   std_logic);
   end component;
   
begin
   C0 : connecteur_MUSER_toplevel
      port map (connect=>connect,
                Din=>Din(0),
                R=>R(0),
                Dout=>Dout(0));
   
   C1 : connecteur_MUSER_toplevel
      port map (connect=>connect,
                Din=>Din(1),
                R=>R(1),
                Dout=>Dout(1));
   
   C2 : connecteur_MUSER_toplevel
      port map (connect=>connect,
                Din=>Din(2),
                R=>R(2),
                Dout=>Dout(2));
   
   C3 : connecteur_MUSER_toplevel
      port map (connect=>connect,
                Din=>Din(3),
                R=>R(3),
                Dout=>Dout(3));
   
   C4 : connecteur_MUSER_toplevel
      port map (connect=>connect,
                Din=>Din(4),
                R=>R(4),
                Dout=>Dout(4));
   
   C5 : connecteur_MUSER_toplevel
      port map (connect=>connect,
                Din=>Din(5),
                R=>R(5),
                Dout=>Dout(5));
   
   C6 : connecteur_MUSER_toplevel
      port map (connect=>connect,
                Din=>Din(6),
                R=>R(6),
                Dout=>Dout(6));
   
   C7 : connecteur_MUSER_toplevel
      port map (connect=>connect,
                Din=>Din(7),
                R=>R(7),
                Dout=>Dout(7));
   
   C8 : connecteur_MUSER_toplevel
      port map (connect=>connect,
                Din=>Din(8),
                R=>R(8),
                Dout=>Dout(8));
   
   C9 : connecteur_MUSER_toplevel
      port map (connect=>connect,
                Din=>Din(9),
                R=>R(9),
                Dout=>Dout(9));
   
   C10 : connecteur_MUSER_toplevel
      port map (connect=>connect,
                Din=>Din(10),
                R=>R(10),
                Dout=>Dout(10));
   
   C11 : connecteur_MUSER_toplevel
      port map (connect=>connect,
                Din=>Din(11),
                R=>R(11),
                Dout=>Dout(11));
   
   C12 : connecteur_MUSER_toplevel
      port map (connect=>connect,
                Din=>Din(12),
                R=>R(12),
                Dout=>Dout(12));
   
   C13 : connecteur_MUSER_toplevel
      port map (connect=>connect,
                Din=>Din(13),
                R=>R(13),
                Dout=>Dout(13));
   
   C14 : connecteur_MUSER_toplevel
      port map (connect=>connect,
                Din=>Din(14),
                R=>R(14),
                Dout=>Dout(14));
   
   C15 : connecteur_MUSER_toplevel
      port map (connect=>connect,
                Din=>Din(15),
                R=>R(15),
                Dout=>Dout(15));
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity FD16CE_MXILINX_toplevel is
   port ( C   : in    std_logic; 
          CE  : in    std_logic; 
          CLR : in    std_logic; 
          D   : in    std_logic_vector (15 downto 0); 
          Q   : out   std_logic_vector (15 downto 0));
end FD16CE_MXILINX_toplevel;

architecture BEHAVIORAL of FD16CE_MXILINX_toplevel is
   attribute BOX_TYPE   : string ;
   component FDCE
      generic( INIT : bit :=  '0');
      port ( C   : in    std_logic; 
             CE  : in    std_logic; 
             CLR : in    std_logic; 
             D   : in    std_logic; 
             Q   : out   std_logic);
   end component;
   attribute BOX_TYPE of FDCE : component is "BLACK_BOX";
   
begin
   I_Q0 : FDCE
      port map (C=>C,
                CE=>CE,
                CLR=>CLR,
                D=>D(0),
                Q=>Q(0));
   
   I_Q1 : FDCE
      port map (C=>C,
                CE=>CE,
                CLR=>CLR,
                D=>D(1),
                Q=>Q(1));
   
   I_Q2 : FDCE
      port map (C=>C,
                CE=>CE,
                CLR=>CLR,
                D=>D(2),
                Q=>Q(2));
   
   I_Q3 : FDCE
      port map (C=>C,
                CE=>CE,
                CLR=>CLR,
                D=>D(3),
                Q=>Q(3));
   
   I_Q4 : FDCE
      port map (C=>C,
                CE=>CE,
                CLR=>CLR,
                D=>D(4),
                Q=>Q(4));
   
   I_Q5 : FDCE
      port map (C=>C,
                CE=>CE,
                CLR=>CLR,
                D=>D(5),
                Q=>Q(5));
   
   I_Q6 : FDCE
      port map (C=>C,
                CE=>CE,
                CLR=>CLR,
                D=>D(6),
                Q=>Q(6));
   
   I_Q7 : FDCE
      port map (C=>C,
                CE=>CE,
                CLR=>CLR,
                D=>D(7),
                Q=>Q(7));
   
   I_Q8 : FDCE
      port map (C=>C,
                CE=>CE,
                CLR=>CLR,
                D=>D(8),
                Q=>Q(8));
   
   I_Q9 : FDCE
      port map (C=>C,
                CE=>CE,
                CLR=>CLR,
                D=>D(9),
                Q=>Q(9));
   
   I_Q10 : FDCE
      port map (C=>C,
                CE=>CE,
                CLR=>CLR,
                D=>D(10),
                Q=>Q(10));
   
   I_Q11 : FDCE
      port map (C=>C,
                CE=>CE,
                CLR=>CLR,
                D=>D(11),
                Q=>Q(11));
   
   I_Q12 : FDCE
      port map (C=>C,
                CE=>CE,
                CLR=>CLR,
                D=>D(12),
                Q=>Q(12));
   
   I_Q13 : FDCE
      port map (C=>C,
                CE=>CE,
                CLR=>CLR,
                D=>D(13),
                Q=>Q(13));
   
   I_Q14 : FDCE
      port map (C=>C,
                CE=>CE,
                CLR=>CLR,
                D=>D(14),
                Q=>Q(14));
   
   I_Q15 : FDCE
      port map (C=>C,
                CE=>CE,
                CLR=>CLR,
                D=>D(15),
                Q=>Q(15));
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity S3_MUSER_toplevel is
   port ( clk      : in    std_logic; 
          switches : in    std_logic_vector (15 downto 0); 
          anodes   : out   std_logic_vector (3 downto 0); 
          Led      : out   std_logic_vector (15 downto 0); 
          sevenseg : out   std_logic_vector (6 downto 0));
end S3_MUSER_toplevel;

architecture BEHAVIORAL of S3_MUSER_toplevel is
   attribute HU_SET     : string ;
   attribute BOX_TYPE   : string ;
   signal bus_data             : std_logic_vector (15 downto 0);
   signal XLXN_1               : std_logic_vector (15 downto 0);
   signal XLXN_2               : std_logic_vector (15 downto 0);
   signal XLXN_3               : std_logic_vector (15 downto 0);
   signal XLXN_4               : std_logic_vector (15 downto 0);
   signal XLXN_5               : std_logic_vector (15 downto 0);
   signal XLXN_7               : std_logic_vector (15 downto 0);
   signal XLXN_8               : std_logic_vector (15 downto 0);
   signal XLXN_9               : std_logic_vector (15 downto 0);
   signal XLXN_10              : std_logic_vector (15 downto 0);
   signal XLXN_11              : std_logic_vector (15 downto 0);
   signal XLXN_12              : std_logic_vector (15 downto 0);
   signal XLXN_13              : std_logic_vector (15 downto 0);
   signal XLXN_14              : std_logic_vector (15 downto 0);
   signal XLXN_15              : std_logic_vector (15 downto 0);
   signal XLXN_16              : std_logic;
   signal XLXN_17              : std_logic;
   signal XLXN_18              : std_logic;
   signal XLXN_19              : std_logic;
   signal XLXN_20              : std_logic;
   signal XLXN_21              : std_logic;
   signal XLXN_23              : std_logic;
   signal XLXN_24              : std_logic;
   signal XLXN_25              : std_logic;
   signal XLXN_26              : std_logic;
   signal XLXN_27              : std_logic;
   signal XLXN_28              : std_logic;
   signal XLXN_29              : std_logic;
   signal XLXN_30              : std_logic;
   signal XLXN_31              : std_logic_vector (15 downto 0);
   signal XLXN_32              : std_logic_vector (15 downto 0);
   signal XLXN_33              : std_logic_vector (15 downto 0);
   signal XLXN_34              : std_logic_vector (15 downto 0);
   signal XLXN_35              : std_logic_vector (15 downto 0);
   signal XLXN_36              : std_logic_vector (15 downto 0);
   signal XLXN_37              : std_logic_vector (15 downto 0);
   signal XLXN_38              : std_logic_vector (15 downto 0);
   signal XLXN_39              : std_logic_vector (15 downto 0);
   signal XLXN_40              : std_logic_vector (15 downto 0);
   signal XLXN_41              : std_logic_vector (15 downto 0);
   signal XLXN_42              : std_logic_vector (15 downto 0);
   signal XLXN_43              : std_logic_vector (15 downto 0);
   signal XLXN_45              : std_logic_vector (15 downto 0);
   signal XLXN_46              : std_logic_vector (15 downto 0);
   signal XLXN_79              : std_logic;
   signal XLXN_82              : std_logic;
   signal Led_DUMMY            : std_logic_vector (15 downto 0);
   signal CO_CE_openSignal     : std_logic;
   signal CO_CLR_openSignal    : std_logic;
   signal CO_D_openSignal      : std_logic_vector (15 downto 0);
   signal Ram_CE_openSignal    : std_logic;
   signal Ram_CLR_openSignal   : std_logic;
   signal Rdest_CE_openSignal  : std_logic;
   signal Rdest_CLR_openSignal : std_logic;
   signal Rdest_D_openSignal   : std_logic_vector (15 downto 0);
   signal Rdm_CE_openSignal    : std_logic;
   signal Rdm_CLR_openSignal   : std_logic;
   signal Rdm_D_openSignal     : std_logic_vector (15 downto 0);
   signal RI_CE_openSignal     : std_logic;
   signal RI_CLR_openSignal    : std_logic;
   signal RI_D_openSignal      : std_logic_vector (15 downto 0);
   signal Rled_CLR_openSignal  : std_logic;
   signal Rsrc1_CE_openSignal  : std_logic;
   signal Rsrc1_CLR_openSignal : std_logic;
   signal Rsrc2_CE_openSignal  : std_logic;
   signal Rsrc2_CLR_openSignal : std_logic;
   signal Rsw_CLR_openSignal   : std_logic;
   signal R1_CE_openSignal     : std_logic;
   signal R1_CLR_openSignal    : std_logic;
   signal R2_CE_openSignal     : std_logic;
   signal R2_CLR_openSignal    : std_logic;
   signal R3_CE_openSignal     : std_logic;
   signal R3_CLR_openSignal    : std_logic;
   signal R4_CE_openSignal     : std_logic;
   signal R4_CLR_openSignal    : std_logic;
   signal R5_CE_openSignal     : std_logic;
   signal R5_CLR_openSignal    : std_logic;
   signal R7seg_CLR_openSignal : std_logic;
   component FD16CE_MXILINX_toplevel
      port ( C   : in    std_logic; 
             CE  : in    std_logic; 
             CLR : in    std_logic; 
             D   : in    std_logic_vector (15 downto 0); 
             Q   : out   std_logic_vector (15 downto 0));
   end component;
   
   component connect16_MUSER_toplevel
      port ( Din     : in    std_logic_vector (15 downto 0); 
             R       : in    std_logic_vector (15 downto 0); 
             connect : in    std_logic; 
             Dout    : out   std_logic_vector (15 downto 0));
   end component;
   
   component GND
      port ( G : out   std_logic);
   end component;
   attribute BOX_TYPE of GND : component is "BLACK_BOX";
   
   component clkdiv_MUSER_toplevel
      port ( clk    : in    std_logic; 
             clksec : out   std_logic; 
             clk190 : out   std_logic);
   end component;
   
   component afficheur16
      port ( clk      : in    std_logic; 
             data     : in    std_logic_vector (15 downto 0); 
             sevenseg : out   std_logic_vector (6 downto 0); 
             anodes   : out   std_logic_vector (3 downto 0));
   end component;
   
   component VCC
      port ( P : out   std_logic);
   end component;
   attribute BOX_TYPE of VCC : component is "BLACK_BOX";
   
   attribute HU_SET of CO : label is "CO_13";
   attribute HU_SET of Ram : label is "Ram_11";
   attribute HU_SET of Rdest : label is "Rdest_10";
   attribute HU_SET of Rdm : label is "Rdm_12";
   attribute HU_SET of RI : label is "RI_14";
   attribute HU_SET of Rled : label is "Rled_5";
   attribute HU_SET of Rsrc1 : label is "Rsrc1_8";
   attribute HU_SET of Rsrc2 : label is "Rsrc2_9";
   attribute HU_SET of Rsw : label is "Rsw_6";
   attribute HU_SET of R1 : label is "R1_0";
   attribute HU_SET of R2 : label is "R2_1";
   attribute HU_SET of R3 : label is "R3_2";
   attribute HU_SET of R4 : label is "R4_3";
   attribute HU_SET of R5 : label is "R5_4";
   attribute HU_SET of R7seg : label is "R7seg_7";
begin
   XLXN_46(15 downto 0) <= x"0000";
   Led(15 downto 0) <= Led_DUMMY(15 downto 0);
   CO : FD16CE_MXILINX_toplevel
      port map (C=>clk,
                CE=>CO_CE_openSignal,
                CLR=>CO_CLR_openSignal,
                D(15 downto 0)=>CO_D_openSignal(15 downto 0),
                Q(15 downto 0)=>XLXN_14(15 downto 0));
   
   CRam : connect16_MUSER_toplevel
      port map (connect=>XLXN_27,
                Din(15 downto 0)=>XLXN_41(15 downto 0),
                R(15 downto 0)=>XLXN_12(15 downto 0),
                Dout(15 downto 0)=>XLXN_42(15 downto 0));
   
   CRdest : connect16_MUSER_toplevel
      port map (connect=>XLXN_26,
                Din(15 downto 0)=>XLXN_40(15 downto 0),
                R(15 downto 0)=>XLXN_11(15 downto 0),
                Dout(15 downto 0)=>XLXN_41(15 downto 0));
   
   CRdm : connect16_MUSER_toplevel
      port map (connect=>XLXN_28,
                Din(15 downto 0)=>XLXN_42(15 downto 0),
                R(15 downto 0)=>XLXN_13(15 downto 0),
                Dout(15 downto 0)=>XLXN_43(15 downto 0));
   
   CRI : connect16_MUSER_toplevel
      port map (connect=>XLXN_30,
                Din(15 downto 0)=>XLXN_45(15 downto 0),
                R(15 downto 0)=>XLXN_15(15 downto 0),
                Dout(15 downto 0)=>bus_data(15 downto 0));
   
   CRled : connect16_MUSER_toplevel
      port map (connect=>XLXN_21,
                Din(15 downto 0)=>XLXN_35(15 downto 0),
                R(15 downto 0)=>Led_DUMMY(15 downto 0),
                Dout(15 downto 0)=>XLXN_36(15 downto 0));
   
   CRO : connect16_MUSER_toplevel
      port map (connect=>XLXN_29,
                Din(15 downto 0)=>XLXN_43(15 downto 0),
                R(15 downto 0)=>XLXN_14(15 downto 0),
                Dout(15 downto 0)=>XLXN_45(15 downto 0));
   
   CRsrc1 : connect16_MUSER_toplevel
      port map (connect=>XLXN_24,
                Din(15 downto 0)=>XLXN_39(15 downto 0),
                R(15 downto 0)=>XLXN_9(15 downto 0),
                Dout(15 downto 0)=>XLXN_38(15 downto 0));
   
   CRsrc2 : connect16_MUSER_toplevel
      port map (connect=>XLXN_25,
                Din(15 downto 0)=>XLXN_38(15 downto 0),
                R(15 downto 0)=>XLXN_10(15 downto 0),
                Dout(15 downto 0)=>XLXN_40(15 downto 0));
   
   CRsw : connect16_MUSER_toplevel
      port map (connect=>XLXN_82,
                Din(15 downto 0)=>XLXN_36(15 downto 0),
                R(15 downto 0)=>XLXN_7(15 downto 0),
                Dout(15 downto 0)=>XLXN_37(15 downto 0));
   
   CR1 : connect16_MUSER_toplevel
      port map (connect=>XLXN_16,
                Din(15 downto 0)=>XLXN_46(15 downto 0),
                R(15 downto 0)=>XLXN_1(15 downto 0),
                Dout(15 downto 0)=>XLXN_31(15 downto 0));
   
   CR2 : connect16_MUSER_toplevel
      port map (connect=>XLXN_17,
                Din(15 downto 0)=>XLXN_31(15 downto 0),
                R(15 downto 0)=>XLXN_2(15 downto 0),
                Dout(15 downto 0)=>XLXN_32(15 downto 0));
   
   CR3 : connect16_MUSER_toplevel
      port map (connect=>XLXN_18,
                Din(15 downto 0)=>XLXN_32(15 downto 0),
                R(15 downto 0)=>XLXN_3(15 downto 0),
                Dout(15 downto 0)=>XLXN_33(15 downto 0));
   
   CR4 : connect16_MUSER_toplevel
      port map (connect=>XLXN_19,
                Din(15 downto 0)=>XLXN_33(15 downto 0),
                R(15 downto 0)=>XLXN_4(15 downto 0),
                Dout(15 downto 0)=>XLXN_34(15 downto 0));
   
   CR5 : connect16_MUSER_toplevel
      port map (connect=>XLXN_20,
                Din(15 downto 0)=>XLXN_34(15 downto 0),
                R(15 downto 0)=>XLXN_5(15 downto 0),
                Dout(15 downto 0)=>XLXN_35(15 downto 0));
   
   CR7seg : connect16_MUSER_toplevel
      port map (connect=>XLXN_23,
                Din(15 downto 0)=>XLXN_37(15 downto 0),
                R(15 downto 0)=>XLXN_8(15 downto 0),
                Dout(15 downto 0)=>XLXN_39(15 downto 0));
   
   Ram : FD16CE_MXILINX_toplevel
      port map (C=>clk,
                CE=>Ram_CE_openSignal,
                CLR=>Ram_CLR_openSignal,
                D(15 downto 0)=>bus_data(15 downto 0),
                Q(15 downto 0)=>XLXN_12(15 downto 0));
   
   Rdest : FD16CE_MXILINX_toplevel
      port map (C=>clk,
                CE=>Rdest_CE_openSignal,
                CLR=>Rdest_CLR_openSignal,
                D(15 downto 0)=>Rdest_D_openSignal(15 downto 0),
                Q(15 downto 0)=>XLXN_11(15 downto 0));
   
   Rdm : FD16CE_MXILINX_toplevel
      port map (C=>clk,
                CE=>Rdm_CE_openSignal,
                CLR=>Rdm_CLR_openSignal,
                D(15 downto 0)=>Rdm_D_openSignal(15 downto 0),
                Q(15 downto 0)=>XLXN_13(15 downto 0));
   
   RI : FD16CE_MXILINX_toplevel
      port map (C=>clk,
                CE=>RI_CE_openSignal,
                CLR=>RI_CLR_openSignal,
                D(15 downto 0)=>RI_D_openSignal(15 downto 0),
                Q(15 downto 0)=>XLXN_15(15 downto 0));
   
   Rled : FD16CE_MXILINX_toplevel
      port map (C=>clk,
                CE=>XLXN_82,
                CLR=>Rled_CLR_openSignal,
                D(15 downto 0)=>bus_data(15 downto 0),
                Q(15 downto 0)=>Led_DUMMY(15 downto 0));
   
   Rsrc1 : FD16CE_MXILINX_toplevel
      port map (C=>clk,
                CE=>Rsrc1_CE_openSignal,
                CLR=>Rsrc1_CLR_openSignal,
                D(15 downto 0)=>bus_data(15 downto 0),
                Q(15 downto 0)=>XLXN_9(15 downto 0));
   
   Rsrc2 : FD16CE_MXILINX_toplevel
      port map (C=>clk,
                CE=>Rsrc2_CE_openSignal,
                CLR=>Rsrc2_CLR_openSignal,
                D(15 downto 0)=>bus_data(15 downto 0),
                Q(15 downto 0)=>XLXN_10(15 downto 0));
   
   Rsw : FD16CE_MXILINX_toplevel
      port map (C=>clk,
                CE=>XLXN_82,
                CLR=>Rsw_CLR_openSignal,
                D(15 downto 0)=>switches(15 downto 0),
                Q(15 downto 0)=>XLXN_7(15 downto 0));
   
   R1 : FD16CE_MXILINX_toplevel
      port map (C=>clk,
                CE=>R1_CE_openSignal,
                CLR=>R1_CLR_openSignal,
                D(15 downto 0)=>bus_data(15 downto 0),
                Q(15 downto 0)=>XLXN_1(15 downto 0));
   
   R2 : FD16CE_MXILINX_toplevel
      port map (C=>clk,
                CE=>R2_CE_openSignal,
                CLR=>R2_CLR_openSignal,
                D(15 downto 0)=>bus_data(15 downto 0),
                Q(15 downto 0)=>XLXN_2(15 downto 0));
   
   R3 : FD16CE_MXILINX_toplevel
      port map (C=>clk,
                CE=>R3_CE_openSignal,
                CLR=>R3_CLR_openSignal,
                D(15 downto 0)=>bus_data(15 downto 0),
                Q(15 downto 0)=>XLXN_3(15 downto 0));
   
   R4 : FD16CE_MXILINX_toplevel
      port map (C=>clk,
                CE=>R4_CE_openSignal,
                CLR=>R4_CLR_openSignal,
                D(15 downto 0)=>bus_data(15 downto 0),
                Q(15 downto 0)=>XLXN_4(15 downto 0));
   
   R5 : FD16CE_MXILINX_toplevel
      port map (C=>clk,
                CE=>R5_CE_openSignal,
                CLR=>R5_CLR_openSignal,
                D(15 downto 0)=>bus_data(15 downto 0),
                Q(15 downto 0)=>XLXN_5(15 downto 0));
   
   R7seg : FD16CE_MXILINX_toplevel
      port map (C=>clk,
                CE=>XLXN_82,
                CLR=>R7seg_CLR_openSignal,
                D(15 downto 0)=>bus_data(15 downto 0),
                Q(15 downto 0)=>XLXN_8(15 downto 0));
   
   XLXI_33 : GND
      port map (G=>XLXN_16);
   
   XLXI_34 : GND
      port map (G=>XLXN_17);
   
   XLXI_35 : GND
      port map (G=>XLXN_18);
   
   XLXI_36 : GND
      port map (G=>XLXN_19);
   
   XLXI_37 : GND
      port map (G=>XLXN_20);
   
   XLXI_38 : GND
      port map (G=>XLXN_21);
   
   XLXI_40 : GND
      port map (G=>XLXN_23);
   
   XLXI_41 : GND
      port map (G=>XLXN_24);
   
   XLXI_42 : GND
      port map (G=>XLXN_25);
   
   XLXI_43 : GND
      port map (G=>XLXN_26);
   
   XLXI_44 : GND
      port map (G=>XLXN_27);
   
   XLXI_45 : GND
      port map (G=>XLXN_28);
   
   XLXI_46 : GND
      port map (G=>XLXN_29);
   
   XLXI_47 : GND
      port map (G=>XLXN_30);
   
   XLXI_49 : clkdiv_MUSER_toplevel
      port map (clk=>clk,
                clksec=>open,
                clk190=>XLXN_79);
   
   XLXI_50 : afficheur16
      port map (clk=>XLXN_79,
                data(15 downto 0)=>XLXN_8(15 downto 0),
                anodes(3 downto 0)=>anodes(3 downto 0),
                sevenseg(6 downto 0)=>sevenseg(6 downto 0));
   
   XLXI_52 : VCC
      port map (P=>XLXN_82);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity toplevel is
   port ( clk      : in    std_logic; 
          switches : in    std_logic_vector (7 downto 0); 
          anodes   : out   std_logic_vector (3 downto 0); 
          Led      : out   std_logic_vector (7 downto 0); 
          sevenseg : out   std_logic_vector (6 downto 0));
end toplevel;

architecture BEHAVIORAL of toplevel is
   attribute HU_SET     : string ;
   signal ld       : std_logic_vector (15 downto 0);
   signal sw       : std_logic_vector (15 downto 0);
   component S3_MUSER_toplevel
      port ( clk      : in    std_logic; 
             switches : in    std_logic_vector (15 downto 0); 
             Led      : out   std_logic_vector (15 downto 0); 
             anodes   : out   std_logic_vector (3 downto 0); 
             sevenseg : out   std_logic_vector (6 downto 0));
   end component;
   
   component OBUF8_MXILINX_toplevel
      port ( I : in    std_logic_vector (7 downto 0); 
             O : out   std_logic_vector (7 downto 0));
   end component;
   
   component IBUF8_MXILINX_toplevel
      port ( I : in    std_logic_vector (7 downto 0); 
             O : out   std_logic_vector (7 downto 0));
   end component;
   
   attribute HU_SET of XLXI_2 : label is "XLXI_2_15";
   attribute HU_SET of XLXI_3 : label is "XLXI_3_16";
begin
   sw(15 downto 8) <= x"00";
   mon_S3 : S3_MUSER_toplevel
      port map (clk=>clk,
                switches(15 downto 0)=>sw(15 downto 0),
                anodes(3 downto 0)=>anodes(3 downto 0),
                Led(15 downto 0)=>ld(15 downto 0),
                sevenseg(6 downto 0)=>sevenseg(6 downto 0));
   
   XLXI_2 : OBUF8_MXILINX_toplevel
      port map (I(7 downto 0)=>ld(7 downto 0),
                O(7 downto 0)=>Led(7 downto 0));
   
   XLXI_3 : IBUF8_MXILINX_toplevel
      port map (I(7 downto 0)=>switches(7 downto 0),
                O(7 downto 0)=>sw(7 downto 0));
   
end BEHAVIORAL;


