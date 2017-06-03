--------------------------------------------------------------------------------
-- Copyright (c) 1995-2010 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 12.4
--  \   \         Application : sch2hdl
--  /   /         Filename : S3_drc.vhf
-- /___/   /\     Timestamp : 12/02/2013 11:41:17
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: /usr/local/Xilinx/12.4/ISE_DS/ISE/bin/lin/unwrapped/sch2hdl -sympath /home/l2/ferlicotdelbe/tp/ARCHI/tp8/ipcore_dir -intstyle ise -family spartan3e -flat -suppress -vhdl S3_drc.vhf -w /home/l2/ferlicotdelbe/tp/ARCHI/tp8/S3.sch
--Design Name: S3
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

entity D4_16E_MXILINX_S3 is
   port ( A0  : in    std_logic; 
          A1  : in    std_logic; 
          A2  : in    std_logic; 
          A3  : in    std_logic; 
          E   : in    std_logic; 
          D0  : out   std_logic; 
          D1  : out   std_logic; 
          D2  : out   std_logic; 
          D3  : out   std_logic; 
          D4  : out   std_logic; 
          D5  : out   std_logic; 
          D6  : out   std_logic; 
          D7  : out   std_logic; 
          D8  : out   std_logic; 
          D9  : out   std_logic; 
          D10 : out   std_logic; 
          D11 : out   std_logic; 
          D12 : out   std_logic; 
          D13 : out   std_logic; 
          D14 : out   std_logic; 
          D15 : out   std_logic);
end D4_16E_MXILINX_S3;

architecture BEHAVIORAL of D4_16E_MXILINX_S3 is
   attribute BOX_TYPE   : string ;
   component AND5B3
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             I4 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND5B3 : component is "BLACK_BOX";
   
   component AND5B2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             I4 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND5B2 : component is "BLACK_BOX";
   
   component AND5B1
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             I4 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND5B1 : component is "BLACK_BOX";
   
   component AND5
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             I4 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND5 : component is "BLACK_BOX";
   
   component AND5B4
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             I4 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND5B4 : component is "BLACK_BOX";
   
begin
   I_36_53 : AND5B3
      port map (I0=>A0,
                I1=>A1,
                I2=>A2,
                I3=>A3,
                I4=>E,
                O=>D8);
   
   I_36_54 : AND5B2
      port map (I0=>A1,
                I1=>A2,
                I2=>E,
                I3=>A3,
                I4=>A0,
                O=>D9);
   
   I_36_55 : AND5B2
      port map (I0=>A0,
                I1=>A2,
                I2=>E,
                I3=>A3,
                I4=>A1,
                O=>D10);
   
   I_36_56 : AND5B1
      port map (I0=>A2,
                I1=>A0,
                I2=>A1,
                I3=>A3,
                I4=>E,
                O=>D11);
   
   I_36_57 : AND5B2
      port map (I0=>A0,
                I1=>A1,
                I2=>E,
                I3=>A3,
                I4=>A2,
                O=>D12);
   
   I_36_58 : AND5B1
      port map (I0=>A1,
                I1=>A0,
                I2=>A2,
                I3=>A3,
                I4=>E,
                O=>D13);
   
   I_36_59 : AND5B1
      port map (I0=>A0,
                I1=>A1,
                I2=>A2,
                I3=>A3,
                I4=>E,
                O=>D14);
   
   I_36_60 : AND5
      port map (I0=>A3,
                I1=>A2,
                I2=>A1,
                I3=>A0,
                I4=>E,
                O=>D15);
   
   I_36_61 : AND5B2
      port map (I0=>A3,
                I1=>A0,
                I2=>E,
                I3=>A2,
                I4=>A1,
                O=>D6);
   
   I_36_62 : AND5B1
      port map (I0=>A3,
                I1=>A2,
                I2=>A1,
                I3=>A0,
                I4=>E,
                O=>D7);
   
   I_36_63 : AND5B2
      port map (I0=>A3,
                I1=>A1,
                I2=>E,
                I3=>A2,
                I4=>A0,
                O=>D5);
   
   I_36_64 : AND5B3
      port map (I0=>A0,
                I1=>A1,
                I2=>A3,
                I3=>A2,
                I4=>E,
                O=>D4);
   
   I_36_65 : AND5B2
      port map (I0=>A2,
                I1=>A3,
                I2=>E,
                I3=>A0,
                I4=>A1,
                O=>D3);
   
   I_36_66 : AND5B3
      port map (I0=>A0,
                I1=>A3,
                I2=>A2,
                I3=>A1,
                I4=>E,
                O=>D2);
   
   I_36_67 : AND5B3
      port map (I0=>A1,
                I1=>A2,
                I2=>A3,
                I3=>A0,
                I4=>E,
                O=>D1);
   
   I_36_68 : AND5B4
      port map (I0=>A3,
                I1=>A2,
                I2=>A1,
                I3=>A0,
                I4=>E,
                O=>D0);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity connecteur_MUSER_S3 is
   port ( connect : in    std_logic; 
          Din     : in    std_logic; 
          R       : in    std_logic; 
          Dout    : out   std_logic);
end connecteur_MUSER_S3;

architecture BEHAVIORAL of connecteur_MUSER_S3 is
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

entity connect16_MUSER_S3 is
   port ( connect : in    std_logic; 
          Din     : in    std_logic_vector (15 downto 0); 
          R       : in    std_logic_vector (15 downto 0); 
          Dout    : out   std_logic_vector (15 downto 0));
end connect16_MUSER_S3;

architecture BEHAVIORAL of connect16_MUSER_S3 is
   component connecteur_MUSER_S3
      port ( Din     : in    std_logic; 
             R       : in    std_logic; 
             connect : in    std_logic; 
             Dout    : out   std_logic);
   end component;
   
begin
   C0 : connecteur_MUSER_S3
      port map (connect=>connect,
                Din=>Din(0),
                R=>R(0),
                Dout=>Dout(0));
   
   C1 : connecteur_MUSER_S3
      port map (connect=>connect,
                Din=>Din(1),
                R=>R(1),
                Dout=>Dout(1));
   
   C2 : connecteur_MUSER_S3
      port map (connect=>connect,
                Din=>Din(2),
                R=>R(2),
                Dout=>Dout(2));
   
   C3 : connecteur_MUSER_S3
      port map (connect=>connect,
                Din=>Din(3),
                R=>R(3),
                Dout=>Dout(3));
   
   C4 : connecteur_MUSER_S3
      port map (connect=>connect,
                Din=>Din(4),
                R=>R(4),
                Dout=>Dout(4));
   
   C5 : connecteur_MUSER_S3
      port map (connect=>connect,
                Din=>Din(5),
                R=>R(5),
                Dout=>Dout(5));
   
   C6 : connecteur_MUSER_S3
      port map (connect=>connect,
                Din=>Din(6),
                R=>R(6),
                Dout=>Dout(6));
   
   C7 : connecteur_MUSER_S3
      port map (connect=>connect,
                Din=>Din(7),
                R=>R(7),
                Dout=>Dout(7));
   
   C8 : connecteur_MUSER_S3
      port map (connect=>connect,
                Din=>Din(8),
                R=>R(8),
                Dout=>Dout(8));
   
   C9 : connecteur_MUSER_S3
      port map (connect=>connect,
                Din=>Din(9),
                R=>R(9),
                Dout=>Dout(9));
   
   C10 : connecteur_MUSER_S3
      port map (connect=>connect,
                Din=>Din(10),
                R=>R(10),
                Dout=>Dout(10));
   
   C11 : connecteur_MUSER_S3
      port map (connect=>connect,
                Din=>Din(11),
                R=>R(11),
                Dout=>Dout(11));
   
   C12 : connecteur_MUSER_S3
      port map (connect=>connect,
                Din=>Din(12),
                R=>R(12),
                Dout=>Dout(12));
   
   C13 : connecteur_MUSER_S3
      port map (connect=>connect,
                Din=>Din(13),
                R=>R(13),
                Dout=>Dout(13));
   
   C14 : connecteur_MUSER_S3
      port map (connect=>connect,
                Din=>Din(14),
                R=>R(14),
                Dout=>Dout(14));
   
   C15 : connecteur_MUSER_S3
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

entity M2_1_MXILINX_S3 is
   port ( D0 : in    std_logic; 
          D1 : in    std_logic; 
          S0 : in    std_logic; 
          O  : out   std_logic);
end M2_1_MXILINX_S3;

architecture BEHAVIORAL of M2_1_MXILINX_S3 is
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

entity mux2x16_MUSER_S3 is
   port ( D0 : in    std_logic_vector (15 downto 0); 
          D1 : in    std_logic_vector (15 downto 0); 
          S0 : in    std_logic; 
          O  : out   std_logic_vector (15 downto 0));
end mux2x16_MUSER_S3;

architecture BEHAVIORAL of mux2x16_MUSER_S3 is
   attribute HU_SET     : string ;
   component M2_1_MXILINX_S3
      port ( D0 : in    std_logic; 
             D1 : in    std_logic; 
             S0 : in    std_logic; 
             O  : out   std_logic);
   end component;
   
   attribute HU_SET of XLXI_1 : label is "XLXI_1_10";
   attribute HU_SET of XLXI_2 : label is "XLXI_2_9";
   attribute HU_SET of XLXI_3 : label is "XLXI_3_11";
   attribute HU_SET of XLXI_4 : label is "XLXI_4_12";
   attribute HU_SET of XLXI_17 : label is "XLXI_17_13";
   attribute HU_SET of XLXI_18 : label is "XLXI_18_8";
   attribute HU_SET of XLXI_19 : label is "XLXI_19_14";
   attribute HU_SET of XLXI_20 : label is "XLXI_20_15";
   attribute HU_SET of XLXI_21 : label is "XLXI_21_6";
   attribute HU_SET of XLXI_22 : label is "XLXI_22_2";
   attribute HU_SET of XLXI_23 : label is "XLXI_23_3";
   attribute HU_SET of XLXI_24 : label is "XLXI_24_1";
   attribute HU_SET of XLXI_25 : label is "XLXI_25_0";
   attribute HU_SET of XLXI_26 : label is "XLXI_26_7";
   attribute HU_SET of XLXI_27 : label is "XLXI_27_5";
   attribute HU_SET of XLXI_28 : label is "XLXI_28_4";
begin
   XLXI_1 : M2_1_MXILINX_S3
      port map (D0=>D0(11),
                D1=>D1(11),
                S0=>S0,
                O=>O(11));
   
   XLXI_2 : M2_1_MXILINX_S3
      port map (D0=>D0(10),
                D1=>D1(10),
                S0=>S0,
                O=>O(10));
   
   XLXI_3 : M2_1_MXILINX_S3
      port map (D0=>D0(9),
                D1=>D1(9),
                S0=>S0,
                O=>O(9));
   
   XLXI_4 : M2_1_MXILINX_S3
      port map (D0=>D0(8),
                D1=>D1(8),
                S0=>S0,
                O=>O(8));
   
   XLXI_17 : M2_1_MXILINX_S3
      port map (D0=>D0(15),
                D1=>D1(15),
                S0=>S0,
                O=>O(15));
   
   XLXI_18 : M2_1_MXILINX_S3
      port map (D0=>D0(14),
                D1=>D1(14),
                S0=>S0,
                O=>O(14));
   
   XLXI_19 : M2_1_MXILINX_S3
      port map (D0=>D0(13),
                D1=>D1(13),
                S0=>S0,
                O=>O(13));
   
   XLXI_20 : M2_1_MXILINX_S3
      port map (D0=>D0(12),
                D1=>D1(12),
                S0=>S0,
                O=>O(12));
   
   XLXI_21 : M2_1_MXILINX_S3
      port map (D0=>D0(6),
                D1=>D1(6),
                S0=>S0,
                O=>O(6));
   
   XLXI_22 : M2_1_MXILINX_S3
      port map (D0=>D0(2),
                D1=>D1(2),
                S0=>S0,
                O=>O(2));
   
   XLXI_23 : M2_1_MXILINX_S3
      port map (D0=>D0(3),
                D1=>D1(3),
                S0=>S0,
                O=>O(3));
   
   XLXI_24 : M2_1_MXILINX_S3
      port map (D0=>D0(1),
                D1=>D1(1),
                S0=>S0,
                O=>O(1));
   
   XLXI_25 : M2_1_MXILINX_S3
      port map (D0=>D0(0),
                D1=>D1(0),
                S0=>S0,
                O=>O(0));
   
   XLXI_26 : M2_1_MXILINX_S3
      port map (D0=>D0(7),
                D1=>D1(7),
                S0=>S0,
                O=>O(7));
   
   XLXI_27 : M2_1_MXILINX_S3
      port map (D0=>D0(5),
                D1=>D1(5),
                S0=>S0,
                O=>O(5));
   
   XLXI_28 : M2_1_MXILINX_S3
      port map (D0=>D0(4),
                D1=>D1(4),
                S0=>S0,
                O=>O(4));
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity ADD16_MXILINX_S3 is
   port ( A   : in    std_logic_vector (15 downto 0); 
          B   : in    std_logic_vector (15 downto 0); 
          CI  : in    std_logic; 
          CO  : out   std_logic; 
          OFL : out   std_logic; 
          S   : out   std_logic_vector (15 downto 0));
end ADD16_MXILINX_S3;

architecture BEHAVIORAL of ADD16_MXILINX_S3 is
   attribute BOX_TYPE   : string ;
   attribute RLOC       : string ;
   signal C0       : std_logic;
   signal C1       : std_logic;
   signal C2       : std_logic;
   signal C3       : std_logic;
   signal C4       : std_logic;
   signal C5       : std_logic;
   signal C6       : std_logic;
   signal C7       : std_logic;
   signal C8       : std_logic;
   signal C9       : std_logic;
   signal C10      : std_logic;
   signal C11      : std_logic;
   signal C12      : std_logic;
   signal C13      : std_logic;
   signal C14      : std_logic;
   signal C14O     : std_logic;
   signal dummy    : std_logic;
   signal I0       : std_logic;
   signal I1       : std_logic;
   signal I2       : std_logic;
   signal I3       : std_logic;
   signal I4       : std_logic;
   signal I5       : std_logic;
   signal I6       : std_logic;
   signal I7       : std_logic;
   signal I8       : std_logic;
   signal I9       : std_logic;
   signal I10      : std_logic;
   signal I11      : std_logic;
   signal I12      : std_logic;
   signal I13      : std_logic;
   signal I14      : std_logic;
   signal I15      : std_logic;
   signal CO_DUMMY : std_logic;
   component FMAP
      port ( I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             I4 : in    std_logic; 
             O  : in    std_logic);
   end component;
   attribute BOX_TYPE of FMAP : component is "BLACK_BOX";
   
   component MUXCY_L
      port ( CI : in    std_logic; 
             DI : in    std_logic; 
             S  : in    std_logic; 
             LO : out   std_logic);
   end component;
   attribute BOX_TYPE of MUXCY_L : component is "BLACK_BOX";
   
   component MUXCY
      port ( CI : in    std_logic; 
             DI : in    std_logic; 
             S  : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of MUXCY : component is "BLACK_BOX";
   
   component XORCY
      port ( CI : in    std_logic; 
             LI : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of XORCY : component is "BLACK_BOX";
   
   component MUXCY_D
      port ( CI : in    std_logic; 
             DI : in    std_logic; 
             S  : in    std_logic; 
             LO : out   std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of MUXCY_D : component is "BLACK_BOX";
   
   component XOR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of XOR2 : component is "BLACK_BOX";
   
   attribute RLOC of I_36_16 : label is "X0Y4";
   attribute RLOC of I_36_17 : label is "X0Y4";
   attribute RLOC of I_36_18 : label is "X0Y5";
   attribute RLOC of I_36_19 : label is "X0Y5";
   attribute RLOC of I_36_20 : label is "X0Y6";
   attribute RLOC of I_36_21 : label is "X0Y6";
   attribute RLOC of I_36_22 : label is "X0Y7";
   attribute RLOC of I_36_23 : label is "X0Y7";
   attribute RLOC of I_36_55 : label is "X0Y4";
   attribute RLOC of I_36_58 : label is "X0Y5";
   attribute RLOC of I_36_62 : label is "X0Y5";
   attribute RLOC of I_36_63 : label is "X0Y6";
   attribute RLOC of I_36_64 : label is "X0Y7";
   attribute RLOC of I_36_107 : label is "X0Y7";
   attribute RLOC of I_36_110 : label is "X0Y6";
   attribute RLOC of I_36_111 : label is "X0Y4";
   attribute RLOC of I_36_248 : label is "X0Y3";
   attribute RLOC of I_36_249 : label is "X0Y3";
   attribute RLOC of I_36_250 : label is "X0Y2";
   attribute RLOC of I_36_251 : label is "X0Y2";
   attribute RLOC of I_36_252 : label is "X0Y1";
   attribute RLOC of I_36_253 : label is "X0Y1";
   attribute RLOC of I_36_254 : label is "X0Y0";
   attribute RLOC of I_36_255 : label is "X0Y0";
   attribute RLOC of I_36_272 : label is "X0Y0";
   attribute RLOC of I_36_275 : label is "X0Y0";
   attribute RLOC of I_36_279 : label is "X0Y1";
   attribute RLOC of I_36_283 : label is "X0Y1";
   attribute RLOC of I_36_287 : label is "X0Y2";
   attribute RLOC of I_36_291 : label is "X0Y2";
   attribute RLOC of I_36_295 : label is "X0Y3";
   attribute RLOC of I_36_299 : label is "X0Y3";
begin
   CO <= CO_DUMMY;
   I_36_16 : FMAP
      port map (I1=>A(8),
                I2=>B(8),
                I3=>dummy,
                I4=>dummy,
                O=>I8);
   
   I_36_17 : FMAP
      port map (I1=>A(9),
                I2=>B(9),
                I3=>dummy,
                I4=>dummy,
                O=>I9);
   
   I_36_18 : FMAP
      port map (I1=>A(10),
                I2=>B(10),
                I3=>dummy,
                I4=>dummy,
                O=>I10);
   
   I_36_19 : FMAP
      port map (I1=>A(11),
                I2=>B(11),
                I3=>dummy,
                I4=>dummy,
                O=>I11);
   
   I_36_20 : FMAP
      port map (I1=>A(12),
                I2=>B(12),
                I3=>dummy,
                I4=>dummy,
                O=>I12);
   
   I_36_21 : FMAP
      port map (I1=>A(13),
                I2=>B(13),
                I3=>dummy,
                I4=>dummy,
                O=>I13);
   
   I_36_22 : FMAP
      port map (I1=>A(14),
                I2=>B(14),
                I3=>dummy,
                I4=>dummy,
                O=>I14);
   
   I_36_23 : FMAP
      port map (I1=>A(15),
                I2=>B(15),
                I3=>dummy,
                I4=>dummy,
                O=>I15);
   
   I_36_55 : MUXCY_L
      port map (CI=>C8,
                DI=>A(9),
                S=>I9,
                LO=>C9);
   
   I_36_58 : MUXCY_L
      port map (CI=>C10,
                DI=>A(11),
                S=>I11,
                LO=>C11);
   
   I_36_62 : MUXCY_L
      port map (CI=>C9,
                DI=>A(10),
                S=>I10,
                LO=>C10);
   
   I_36_63 : MUXCY_L
      port map (CI=>C11,
                DI=>A(12),
                S=>I12,
                LO=>C12);
   
   I_36_64 : MUXCY
      port map (CI=>C14,
                DI=>A(15),
                S=>I15,
                O=>CO_DUMMY);
   
   I_36_73 : XORCY
      port map (CI=>C7,
                LI=>I8,
                O=>S(8));
   
   I_36_74 : XORCY
      port map (CI=>C8,
                LI=>I9,
                O=>S(9));
   
   I_36_75 : XORCY
      port map (CI=>C10,
                LI=>I11,
                O=>S(11));
   
   I_36_76 : XORCY
      port map (CI=>C9,
                LI=>I10,
                O=>S(10));
   
   I_36_77 : XORCY
      port map (CI=>C12,
                LI=>I13,
                O=>S(13));
   
   I_36_78 : XORCY
      port map (CI=>C11,
                LI=>I12,
                O=>S(12));
   
   I_36_80 : XORCY
      port map (CI=>C14,
                LI=>I15,
                O=>S(15));
   
   I_36_81 : XORCY
      port map (CI=>C13,
                LI=>I14,
                O=>S(14));
   
   I_36_107 : MUXCY_D
      port map (CI=>C13,
                DI=>A(14),
                S=>I14,
                LO=>C14,
                O=>C14O);
   
   I_36_110 : MUXCY_L
      port map (CI=>C12,
                DI=>A(13),
                S=>I13,
                LO=>C13);
   
   I_36_111 : MUXCY_L
      port map (CI=>C7,
                DI=>A(8),
                S=>I8,
                LO=>C8);
   
   I_36_226 : XORCY
      port map (CI=>CI,
                LI=>I0,
                O=>S(0));
   
   I_36_227 : XORCY
      port map (CI=>C0,
                LI=>I1,
                O=>S(1));
   
   I_36_228 : XORCY
      port map (CI=>C2,
                LI=>I3,
                O=>S(3));
   
   I_36_229 : XORCY
      port map (CI=>C1,
                LI=>I2,
                O=>S(2));
   
   I_36_230 : XORCY
      port map (CI=>C4,
                LI=>I5,
                O=>S(5));
   
   I_36_231 : XORCY
      port map (CI=>C3,
                LI=>I4,
                O=>S(4));
   
   I_36_233 : XORCY
      port map (CI=>C6,
                LI=>I7,
                O=>S(7));
   
   I_36_234 : XORCY
      port map (CI=>C5,
                LI=>I6,
                O=>S(6));
   
   I_36_248 : MUXCY_L
      port map (CI=>C6,
                DI=>A(7),
                S=>I7,
                LO=>C7);
   
   I_36_249 : MUXCY_L
      port map (CI=>C5,
                DI=>A(6),
                S=>I6,
                LO=>C6);
   
   I_36_250 : MUXCY_L
      port map (CI=>C4,
                DI=>A(5),
                S=>I5,
                LO=>C5);
   
   I_36_251 : MUXCY_L
      port map (CI=>C3,
                DI=>A(4),
                S=>I4,
                LO=>C4);
   
   I_36_252 : MUXCY_L
      port map (CI=>C2,
                DI=>A(3),
                S=>I3,
                LO=>C3);
   
   I_36_253 : MUXCY_L
      port map (CI=>C1,
                DI=>A(2),
                S=>I2,
                LO=>C2);
   
   I_36_254 : MUXCY_L
      port map (CI=>C0,
                DI=>A(1),
                S=>I1,
                LO=>C1);
   
   I_36_255 : MUXCY_L
      port map (CI=>CI,
                DI=>A(0),
                S=>I0,
                LO=>C0);
   
   I_36_272 : FMAP
      port map (I1=>A(1),
                I2=>B(1),
                I3=>dummy,
                I4=>dummy,
                O=>I1);
   
   I_36_275 : FMAP
      port map (I1=>A(0),
                I2=>B(0),
                I3=>dummy,
                I4=>dummy,
                O=>I0);
   
   I_36_279 : FMAP
      port map (I1=>A(2),
                I2=>B(2),
                I3=>dummy,
                I4=>dummy,
                O=>I2);
   
   I_36_283 : FMAP
      port map (I1=>A(3),
                I2=>B(3),
                I3=>dummy,
                I4=>dummy,
                O=>I3);
   
   I_36_287 : FMAP
      port map (I1=>A(4),
                I2=>B(4),
                I3=>dummy,
                I4=>dummy,
                O=>I4);
   
   I_36_291 : FMAP
      port map (I1=>A(5),
                I2=>B(5),
                I3=>dummy,
                I4=>dummy,
                O=>I5);
   
   I_36_295 : FMAP
      port map (I1=>A(6),
                I2=>B(6),
                I3=>dummy,
                I4=>dummy,
                O=>I6);
   
   I_36_299 : FMAP
      port map (I1=>A(7),
                I2=>B(7),
                I3=>dummy,
                I4=>dummy,
                O=>I7);
   
   I_36_354 : XOR2
      port map (I0=>A(0),
                I1=>B(0),
                O=>I0);
   
   I_36_355 : XOR2
      port map (I0=>A(1),
                I1=>B(1),
                O=>I1);
   
   I_36_356 : XOR2
      port map (I0=>A(2),
                I1=>B(2),
                O=>I2);
   
   I_36_357 : XOR2
      port map (I0=>A(3),
                I1=>B(3),
                O=>I3);
   
   I_36_358 : XOR2
      port map (I0=>A(4),
                I1=>B(4),
                O=>I4);
   
   I_36_359 : XOR2
      port map (I0=>A(5),
                I1=>B(5),
                O=>I5);
   
   I_36_360 : XOR2
      port map (I0=>A(6),
                I1=>B(6),
                O=>I6);
   
   I_36_361 : XOR2
      port map (I0=>A(7),
                I1=>B(7),
                O=>I7);
   
   I_36_362 : XOR2
      port map (I0=>A(8),
                I1=>B(8),
                O=>I8);
   
   I_36_363 : XOR2
      port map (I0=>A(9),
                I1=>B(9),
                O=>I9);
   
   I_36_364 : XOR2
      port map (I0=>A(10),
                I1=>B(10),
                O=>I10);
   
   I_36_365 : XOR2
      port map (I0=>A(11),
                I1=>B(11),
                O=>I11);
   
   I_36_366 : XOR2
      port map (I0=>A(12),
                I1=>B(12),
                O=>I12);
   
   I_36_367 : XOR2
      port map (I0=>A(13),
                I1=>B(13),
                O=>I13);
   
   I_36_368 : XOR2
      port map (I0=>A(14),
                I1=>B(14),
                O=>I14);
   
   I_36_369 : XOR2
      port map (I0=>A(15),
                I1=>B(15),
                O=>I15);
   
   I_36_375 : XOR2
      port map (I0=>C14O,
                I1=>CO_DUMMY,
                O=>OFL);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity inc_MUSER_S3 is
   port ( Din  : in    std_logic_vector (15 downto 0); 
          Dout : out   std_logic_vector (15 downto 0));
end inc_MUSER_S3;

architecture BEHAVIORAL of inc_MUSER_S3 is
   attribute HU_SET     : string ;
   attribute BOX_TYPE   : string ;
   signal XLXN_2 : std_logic_vector (15 downto 0);
   signal XLXN_3 : std_logic;
   component ADD16_MXILINX_S3
      port ( A   : in    std_logic_vector (15 downto 0); 
             B   : in    std_logic_vector (15 downto 0); 
             CI  : in    std_logic; 
             CO  : out   std_logic; 
             OFL : out   std_logic; 
             S   : out   std_logic_vector (15 downto 0));
   end component;
   
   component VCC
      port ( P : out   std_logic);
   end component;
   attribute BOX_TYPE of VCC : component is "BLACK_BOX";
   
   attribute HU_SET of XLXI_1 : label is "XLXI_1_16";
begin
   XLXN_2(15 downto 0) <= x"0000";
   XLXI_1 : ADD16_MXILINX_S3
      port map (A(15 downto 0)=>Din(15 downto 0),
                B(15 downto 0)=>XLXN_2(15 downto 0),
                CI=>XLXN_3,
                CO=>open,
                OFL=>open,
                S(15 downto 0)=>Dout(15 downto 0));
   
   XLXI_3 : VCC
      port map (P=>XLXN_3);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity M2_1E_MXILINX_S3 is
   port ( D0 : in    std_logic; 
          D1 : in    std_logic; 
          E  : in    std_logic; 
          S0 : in    std_logic; 
          O  : out   std_logic);
end M2_1E_MXILINX_S3;

architecture BEHAVIORAL of M2_1E_MXILINX_S3 is
   attribute BOX_TYPE   : string ;
   signal M0 : std_logic;
   signal M1 : std_logic;
   component AND3
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND3 : component is "BLACK_BOX";
   
   component AND3B1
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND3B1 : component is "BLACK_BOX";
   
   component OR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR2 : component is "BLACK_BOX";
   
begin
   I_36_30 : AND3
      port map (I0=>D1,
                I1=>E,
                I2=>S0,
                O=>M1);
   
   I_36_31 : AND3B1
      port map (I0=>S0,
                I1=>E,
                I2=>D0,
                O=>M0);
   
   I_36_38 : OR2
      port map (I0=>M1,
                I1=>M0,
                O=>O);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity M4_1E_MXILINX_S3 is
   port ( D0 : in    std_logic; 
          D1 : in    std_logic; 
          D2 : in    std_logic; 
          D3 : in    std_logic; 
          E  : in    std_logic; 
          S0 : in    std_logic; 
          S1 : in    std_logic; 
          O  : out   std_logic);
end M4_1E_MXILINX_S3;

architecture BEHAVIORAL of M4_1E_MXILINX_S3 is
   attribute HU_SET     : string ;
   attribute BOX_TYPE   : string ;
   signal M01 : std_logic;
   signal M23 : std_logic;
   component M2_1E_MXILINX_S3
      port ( D0 : in    std_logic; 
             D1 : in    std_logic; 
             E  : in    std_logic; 
             S0 : in    std_logic; 
             O  : out   std_logic);
   end component;
   
   component MUXF5
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             S  : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of MUXF5 : component is "BLACK_BOX";
   
   attribute HU_SET of I_M01 : label is "I_M01_18";
   attribute HU_SET of I_M23 : label is "I_M23_17";
begin
   I_M01 : M2_1E_MXILINX_S3
      port map (D0=>D0,
                D1=>D1,
                E=>E,
                S0=>S0,
                O=>M01);
   
   I_M23 : M2_1E_MXILINX_S3
      port map (D0=>D2,
                D1=>D3,
                E=>E,
                S0=>S0,
                O=>M23);
   
   I_O : MUXF5
      port map (I0=>M01,
                I1=>M23,
                S=>S1,
                O=>O);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity mux4x4_MUSER_S3 is
   port ( I0 : in    std_logic_vector (3 downto 0); 
          I1 : in    std_logic_vector (3 downto 0); 
          I2 : in    std_logic_vector (3 downto 0); 
          I3 : in    std_logic_vector (3 downto 0); 
          s  : in    std_logic_vector (1 downto 0); 
          O  : out   std_logic_vector (3 downto 0));
end mux4x4_MUSER_S3;

architecture BEHAVIORAL of mux4x4_MUSER_S3 is
   attribute HU_SET     : string ;
   attribute BOX_TYPE   : string ;
   signal XLXN_42 : std_logic;
   component M4_1E_MXILINX_S3
      port ( D0 : in    std_logic; 
             D1 : in    std_logic; 
             D2 : in    std_logic; 
             D3 : in    std_logic; 
             E  : in    std_logic; 
             S0 : in    std_logic; 
             S1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   
   component VCC
      port ( P : out   std_logic);
   end component;
   attribute BOX_TYPE of VCC : component is "BLACK_BOX";
   
   attribute HU_SET of XLXI_1 : label is "XLXI_1_19";
   attribute HU_SET of XLXI_2 : label is "XLXI_2_20";
   attribute HU_SET of XLXI_3 : label is "XLXI_3_21";
   attribute HU_SET of XLXI_4 : label is "XLXI_4_22";
begin
   XLXI_1 : M4_1E_MXILINX_S3
      port map (D0=>I0(3),
                D1=>I1(3),
                D2=>I2(3),
                D3=>I3(3),
                E=>XLXN_42,
                S0=>s(0),
                S1=>s(1),
                O=>O(3));
   
   XLXI_2 : M4_1E_MXILINX_S3
      port map (D0=>I0(2),
                D1=>I1(2),
                D2=>I2(2),
                D3=>I3(2),
                E=>XLXN_42,
                S0=>s(0),
                S1=>s(1),
                O=>O(2));
   
   XLXI_3 : M4_1E_MXILINX_S3
      port map (D0=>I0(1),
                D1=>I1(1),
                D2=>I2(1),
                D3=>I3(1),
                E=>XLXN_42,
                S0=>s(0),
                S1=>s(1),
                O=>O(1));
   
   XLXI_4 : M4_1E_MXILINX_S3
      port map (D0=>I0(0),
                D1=>I1(0),
                D2=>I2(0),
                D3=>I3(0),
                E=>XLXN_42,
                S0=>s(0),
                S1=>s(1),
                O=>O(0));
   
   XLXI_9 : VCC
      port map (P=>XLXN_42);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity compteur4_MUSER_S3 is
   port ( clk : in    std_logic; 
          q   : out   std_logic_vector (1 downto 0));
end compteur4_MUSER_S3;

architecture BEHAVIORAL of compteur4_MUSER_S3 is
   attribute BOX_TYPE   : string ;
   signal XLXN_2  : std_logic;
   signal XLXN_13 : std_logic;
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
   BaculeD_0 : FD
      port map (C=>clk,
                D=>XLXN_2,
                Q=>q_DUMMY(0));
   
   BaculeD_1 : FD
      port map (C=>XLXN_2,
                D=>XLXN_13,
                Q=>q_DUMMY(1));
   
   XLXI_3 : INV
      port map (I=>q_DUMMY(0),
                O=>XLXN_2);
   
   XLXI_13 : INV
      port map (I=>q_DUMMY(1),
                O=>XLXN_13);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity afficheur16_MUSER_S3 is
   port ( clk      : in    std_logic; 
          data     : in    std_logic_vector (15 downto 0); 
          anodes   : out   std_logic_vector (3 downto 0); 
          sevenseg : out   std_logic_vector (6 downto 0));
end afficheur16_MUSER_S3;

architecture BEHAVIORAL of afficheur16_MUSER_S3 is
   signal XLXN_3   : std_logic_vector (3 downto 0);
   signal XLXN_19  : std_logic_vector (1 downto 0);
   signal XLXN_21  : std_logic_vector (3 downto 0);
   signal XLXN_22  : std_logic_vector (3 downto 0);
   signal XLXN_23  : std_logic_vector (3 downto 0);
   signal XLXN_24  : std_logic_vector (3 downto 0);
   component mux4x4_MUSER_S3
      port ( I0 : in    std_logic_vector (3 downto 0); 
             I1 : in    std_logic_vector (3 downto 0); 
             I2 : in    std_logic_vector (3 downto 0); 
             I3 : in    std_logic_vector (3 downto 0); 
             s  : in    std_logic_vector (1 downto 0); 
             O  : out   std_logic_vector (3 downto 0));
   end component;
   
   component compteur4_MUSER_S3
      port ( clk : in    std_logic; 
             q   : out   std_logic_vector (1 downto 0));
   end component;
   
   component x7seg
      port ( sw       : in    std_logic_vector (3 downto 0); 
             sevenseg : out   std_logic_vector (6 downto 0); 
             anodes   : out   std_logic_vector (3 downto 0));
   end component;
   
begin
   XLXN_21(3 downto 0) <= b"1110";
   XLXN_22(3 downto 0) <= b"1101";
   XLXN_23(3 downto 0) <= b"1011";
   XLXN_24(3 downto 0) <= b"0111";
   mux_anodes : mux4x4_MUSER_S3
      port map (I0(3 downto 0)=>XLXN_21(3 downto 0),
                I1(3 downto 0)=>XLXN_22(3 downto 0),
                I2(3 downto 0)=>XLXN_23(3 downto 0),
                I3(3 downto 0)=>XLXN_24(3 downto 0),
                s(1 downto 0)=>XLXN_19(1 downto 0),
                O(3 downto 0)=>anodes(3 downto 0));
   
   mux_data : mux4x4_MUSER_S3
      port map (I0(3 downto 0)=>data(3 downto 0),
                I1(3 downto 0)=>data(7 downto 4),
                I2(3 downto 0)=>data(11 downto 8),
                I3(3 downto 0)=>data(15 downto 12),
                s(1 downto 0)=>XLXN_19(1 downto 0),
                O(3 downto 0)=>XLXN_3(3 downto 0));
   
   XLXI_1 : compteur4_MUSER_S3
      port map (clk=>clk,
                q(1 downto 0)=>XLXN_19(1 downto 0));
   
   XLXI_10 : x7seg
      port map (sw(3 downto 0)=>XLXN_3(3 downto 0),
                anodes=>open,
                sevenseg(6 downto 0)=>sevenseg(6 downto 0));
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity clkdiv_MUSER_S3 is
   port ( clk    : in    std_logic; 
          clksec : out   std_logic; 
          clk190 : out   std_logic);
end clkdiv_MUSER_S3;

architecture BEHAVIORAL of clkdiv_MUSER_S3 is
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

entity FD16CE_MXILINX_S3 is
   port ( C   : in    std_logic; 
          CE  : in    std_logic; 
          CLR : in    std_logic; 
          D   : in    std_logic_vector (15 downto 0); 
          Q   : out   std_logic_vector (15 downto 0));
end FD16CE_MXILINX_S3;

architecture BEHAVIORAL of FD16CE_MXILINX_S3 is
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

entity S3 is
   port ( clk      : in    std_logic; 
          switches : in    std_logic_vector (15 downto 0); 
          anodes   : out   std_logic_vector (3 downto 0); 
          Led      : out   std_logic_vector (15 downto 0); 
          sevenseg : out   std_logic_vector (6 downto 0));
end S3;

architecture BEHAVIORAL of S3 is
   attribute HU_SET     : string ;
   attribute BOX_TYPE   : string ;
   signal bus_data             : std_logic_vector (15 downto 0);
   signal B2CO                 : std_logic;
   signal B2Ram                : std_logic;
   signal B2Rdestload          : std_logic;
   signal B2Rdm                : std_logic;
   signal B2Rdmload            : std_logic;
   signal B2Rled               : std_logic;
   signal B2Rsrc1              : std_logic;
   signal B2Rsrc2              : std_logic;
   signal B2Rswload            : std_logic;
   signal B2R1                 : std_logic;
   signal B2R2                 : std_logic;
   signal B2R3                 : std_logic;
   signal B2R4                 : std_logic;
   signal B2R5                 : std_logic;
   signal B2R7seg              : std_logic;
   signal COBus                : std_logic_vector (15 downto 0);
   signal COinc                : std_logic;
   signal CO2B                 : std_logic;
   signal dest                 : std_logic_vector (3 downto 0);
   signal Ram2B                : std_logic;
   signal Rdest2B              : std_logic;
   signal Rdm2B                : std_logic;
   signal RIload               : std_logic;
   signal RI2B                 : std_logic;
   signal Rled2B               : std_logic;
   signal Rsrc12B              : std_logic;
   signal Rsrc22B              : std_logic;
   signal Rsw2B                : std_logic;
   signal R7seg2B              : std_logic;
   signal R12B                 : std_logic;
   signal R22B                 : std_logic;
   signal R32B                 : std_logic;
   signal R42B                 : std_logic;
   signal R52B                 : std_logic;
   signal source               : std_logic_vector (3 downto 0);
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
   signal XLXN_15              : std_logic_vector (15 downto 0);
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
   signal XLXN_80              : std_logic_vector (15 downto 0);
   signal XLXN_85              : std_logic;
   signal XLXN_89              : std_logic_vector (15 downto 0);
   signal XLXN_102             : std_logic_vector (15 downto 0);
   signal XLXN_105             : std_logic;
   signal XLXN_109             : std_logic;
   signal XLXN_113             : std_logic;
   signal XLXN_120             : std_logic;
   signal XLXN_136             : std_logic;
   signal XLXN_148             : std_logic;
   signal XLXN_149             : std_logic;
   signal Led_DUMMY            : std_logic_vector (15 downto 0);
   signal CO_CLR_openSignal    : std_logic;
   signal Ram_CLR_openSignal   : std_logic;
   signal Rdest_CLR_openSignal : std_logic;
   signal Rdest_D_openSignal   : std_logic_vector (15 downto 0);
   signal Rdm_CLR_openSignal   : std_logic;
   signal Rdm_D_openSignal     : std_logic_vector (15 downto 0);
   signal RI_CLR_openSignal    : std_logic;
   signal Rled_CLR_openSignal  : std_logic;
   signal Rsrc1_CLR_openSignal : std_logic;
   signal Rsrc2_CLR_openSignal : std_logic;
   signal Rsw_CLR_openSignal   : std_logic;
   signal R1_CLR_openSignal    : std_logic;
   signal R2_CLR_openSignal    : std_logic;
   signal R3_CLR_openSignal    : std_logic;
   signal R4_CLR_openSignal    : std_logic;
   signal R5_CLR_openSignal    : std_logic;
   signal R7seg_CLR_openSignal : std_logic;
   component FD16CE_MXILINX_S3
      port ( C   : in    std_logic; 
             CE  : in    std_logic; 
             CLR : in    std_logic; 
             D   : in    std_logic_vector (15 downto 0); 
             Q   : out   std_logic_vector (15 downto 0));
   end component;
   
   component connect16_MUSER_S3
      port ( Din     : in    std_logic_vector (15 downto 0); 
             R       : in    std_logic_vector (15 downto 0); 
             connect : in    std_logic; 
             Dout    : out   std_logic_vector (15 downto 0));
   end component;
   
   component inc_MUSER_S3
      port ( Din  : in    std_logic_vector (15 downto 0); 
             Dout : out   std_logic_vector (15 downto 0));
   end component;
   
   component mux2x16_MUSER_S3
      port ( S0 : in    std_logic; 
             D1 : in    std_logic_vector (15 downto 0); 
             D0 : in    std_logic_vector (15 downto 0); 
             O  : out   std_logic_vector (15 downto 0));
   end component;
   
   component clkdiv_MUSER_S3
      port ( clk    : in    std_logic; 
             clksec : out   std_logic; 
             clk190 : out   std_logic);
   end component;
   
   component afficheur16_MUSER_S3
      port ( clk      : in    std_logic; 
             data     : in    std_logic_vector (15 downto 0); 
             sevenseg : out   std_logic_vector (6 downto 0); 
             anodes   : out   std_logic_vector (3 downto 0));
   end component;
   
   component OR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR2 : component is "BLACK_BOX";
   
   component insmem
      port ( a   : in    std_logic_vector (7 downto 0); 
             spo : out   std_logic_vector (15 downto 0));
   end component;
   
   component fsm3
      port ( clk    : in    std_logic; 
             instr  : in    std_logic_vector (15 downto 0); 
             COinc  : out   std_logic; 
             RIload : out   std_logic; 
             source : out   std_logic_vector (3 downto 0); 
             dest   : out   std_logic_vector (3 downto 0));
   end component;
   
   component D4_16E_MXILINX_S3
      port ( A0  : in    std_logic; 
             A1  : in    std_logic; 
             A2  : in    std_logic; 
             A3  : in    std_logic; 
             E   : in    std_logic; 
             D0  : out   std_logic; 
             D1  : out   std_logic; 
             D10 : out   std_logic; 
             D11 : out   std_logic; 
             D12 : out   std_logic; 
             D13 : out   std_logic; 
             D14 : out   std_logic; 
             D15 : out   std_logic; 
             D2  : out   std_logic; 
             D3  : out   std_logic; 
             D4  : out   std_logic; 
             D5  : out   std_logic; 
             D6  : out   std_logic; 
             D7  : out   std_logic; 
             D8  : out   std_logic; 
             D9  : out   std_logic);
   end component;
   
   component VCC
      port ( P : out   std_logic);
   end component;
   attribute BOX_TYPE of VCC : component is "BLACK_BOX";
   
   attribute HU_SET of CO : label is "CO_36";
   attribute HU_SET of Ram : label is "Ram_34";
   attribute HU_SET of Rdest : label is "Rdest_33";
   attribute HU_SET of Rdm : label is "Rdm_35";
   attribute HU_SET of RI : label is "RI_37";
   attribute HU_SET of Rled : label is "Rled_28";
   attribute HU_SET of Rsrc1 : label is "Rsrc1_31";
   attribute HU_SET of Rsrc2 : label is "Rsrc2_32";
   attribute HU_SET of Rsw : label is "Rsw_29";
   attribute HU_SET of R1 : label is "R1_23";
   attribute HU_SET of R2 : label is "R2_24";
   attribute HU_SET of R3 : label is "R3_25";
   attribute HU_SET of R4 : label is "R4_26";
   attribute HU_SET of R5 : label is "R5_27";
   attribute HU_SET of R7seg : label is "R7seg_30";
   attribute HU_SET of XLXI_61 : label is "XLXI_61_38";
   attribute HU_SET of XLXI_62 : label is "XLXI_62_39";
begin
   XLXN_46(15 downto 0) <= x"0000";
   Led(15 downto 0) <= Led_DUMMY(15 downto 0);
   CO : FD16CE_MXILINX_S3
      port map (C=>clk,
                CE=>XLXN_85,
                CLR=>CO_CLR_openSignal,
                D(15 downto 0)=>XLXN_89(15 downto 0),
                Q(15 downto 0)=>COBus(15 downto 0));
   
   CRam : connect16_MUSER_S3
      port map (connect=>Ram2B,
                Din(15 downto 0)=>XLXN_41(15 downto 0),
                R(15 downto 0)=>XLXN_12(15 downto 0),
                Dout(15 downto 0)=>XLXN_42(15 downto 0));
   
   CRdest : connect16_MUSER_S3
      port map (connect=>Rdest2B,
                Din(15 downto 0)=>XLXN_40(15 downto 0),
                R(15 downto 0)=>XLXN_11(15 downto 0),
                Dout(15 downto 0)=>XLXN_41(15 downto 0));
   
   CRdm : connect16_MUSER_S3
      port map (connect=>Rdm2B,
                Din(15 downto 0)=>XLXN_42(15 downto 0),
                R(15 downto 0)=>XLXN_13(15 downto 0),
                Dout(15 downto 0)=>XLXN_43(15 downto 0));
   
   CRI : connect16_MUSER_S3
      port map (connect=>RI2B,
                Din(15 downto 0)=>XLXN_45(15 downto 0),
                R(15 downto 0)=>XLXN_15(15 downto 0),
                Dout(15 downto 0)=>bus_data(15 downto 0));
   
   CRled : connect16_MUSER_S3
      port map (connect=>Rled2B,
                Din(15 downto 0)=>XLXN_35(15 downto 0),
                R(15 downto 0)=>Led_DUMMY(15 downto 0),
                Dout(15 downto 0)=>XLXN_36(15 downto 0));
   
   CRO : connect16_MUSER_S3
      port map (connect=>CO2B,
                Din(15 downto 0)=>XLXN_43(15 downto 0),
                R(15 downto 0)=>COBus(15 downto 0),
                Dout(15 downto 0)=>XLXN_45(15 downto 0));
   
   CRsrc1 : connect16_MUSER_S3
      port map (connect=>Rsrc12B,
                Din(15 downto 0)=>XLXN_39(15 downto 0),
                R(15 downto 0)=>XLXN_9(15 downto 0),
                Dout(15 downto 0)=>XLXN_38(15 downto 0));
   
   CRsrc2 : connect16_MUSER_S3
      port map (connect=>Rsrc22B,
                Din(15 downto 0)=>XLXN_38(15 downto 0),
                R(15 downto 0)=>XLXN_10(15 downto 0),
                Dout(15 downto 0)=>XLXN_40(15 downto 0));
   
   CRsw : connect16_MUSER_S3
      port map (connect=>Rsw2B,
                Din(15 downto 0)=>XLXN_36(15 downto 0),
                R(15 downto 0)=>XLXN_7(15 downto 0),
                Dout(15 downto 0)=>XLXN_37(15 downto 0));
   
   CR1 : connect16_MUSER_S3
      port map (connect=>R12B,
                Din(15 downto 0)=>XLXN_46(15 downto 0),
                R(15 downto 0)=>XLXN_1(15 downto 0),
                Dout(15 downto 0)=>XLXN_31(15 downto 0));
   
   CR2 : connect16_MUSER_S3
      port map (connect=>R22B,
                Din(15 downto 0)=>XLXN_31(15 downto 0),
                R(15 downto 0)=>XLXN_2(15 downto 0),
                Dout(15 downto 0)=>XLXN_32(15 downto 0));
   
   CR3 : connect16_MUSER_S3
      port map (connect=>R32B,
                Din(15 downto 0)=>XLXN_32(15 downto 0),
                R(15 downto 0)=>XLXN_3(15 downto 0),
                Dout(15 downto 0)=>XLXN_33(15 downto 0));
   
   CR4 : connect16_MUSER_S3
      port map (connect=>R42B,
                Din(15 downto 0)=>XLXN_33(15 downto 0),
                R(15 downto 0)=>XLXN_4(15 downto 0),
                Dout(15 downto 0)=>XLXN_34(15 downto 0));
   
   CR5 : connect16_MUSER_S3
      port map (connect=>R52B,
                Din(15 downto 0)=>XLXN_34(15 downto 0),
                R(15 downto 0)=>XLXN_5(15 downto 0),
                Dout(15 downto 0)=>XLXN_35(15 downto 0));
   
   CR7seg : connect16_MUSER_S3
      port map (connect=>R7seg2B,
                Din(15 downto 0)=>XLXN_37(15 downto 0),
                R(15 downto 0)=>XLXN_8(15 downto 0),
                Dout(15 downto 0)=>XLXN_39(15 downto 0));
   
   incCO : inc_MUSER_S3
      port map (Din(15 downto 0)=>COBus(15 downto 0),
                Dout(15 downto 0)=>XLXN_80(15 downto 0));
   
   Ram : FD16CE_MXILINX_S3
      port map (C=>clk,
                CE=>B2Ram,
                CLR=>Ram_CLR_openSignal,
                D(15 downto 0)=>bus_data(15 downto 0),
                Q(15 downto 0)=>XLXN_12(15 downto 0));
   
   Rdest : FD16CE_MXILINX_S3
      port map (C=>clk,
                CE=>B2Rdestload,
                CLR=>Rdest_CLR_openSignal,
                D(15 downto 0)=>Rdest_D_openSignal(15 downto 0),
                Q(15 downto 0)=>XLXN_11(15 downto 0));
   
   Rdm : FD16CE_MXILINX_S3
      port map (C=>clk,
                CE=>B2Rdmload,
                CLR=>Rdm_CLR_openSignal,
                D(15 downto 0)=>Rdm_D_openSignal(15 downto 0),
                Q(15 downto 0)=>XLXN_13(15 downto 0));
   
   RI : FD16CE_MXILINX_S3
      port map (C=>clk,
                CE=>RIload,
                CLR=>RI_CLR_openSignal,
                D(15 downto 0)=>XLXN_102(15 downto 0),
                Q(15 downto 0)=>XLXN_15(15 downto 0));
   
   Rled : FD16CE_MXILINX_S3
      port map (C=>clk,
                CE=>B2Rled,
                CLR=>Rled_CLR_openSignal,
                D(15 downto 0)=>bus_data(15 downto 0),
                Q(15 downto 0)=>Led_DUMMY(15 downto 0));
   
   Rsrc1 : FD16CE_MXILINX_S3
      port map (C=>clk,
                CE=>B2Rsrc1,
                CLR=>Rsrc1_CLR_openSignal,
                D(15 downto 0)=>bus_data(15 downto 0),
                Q(15 downto 0)=>XLXN_9(15 downto 0));
   
   Rsrc2 : FD16CE_MXILINX_S3
      port map (C=>clk,
                CE=>B2Rsrc2,
                CLR=>Rsrc2_CLR_openSignal,
                D(15 downto 0)=>bus_data(15 downto 0),
                Q(15 downto 0)=>XLXN_10(15 downto 0));
   
   Rsw : FD16CE_MXILINX_S3
      port map (C=>clk,
                CE=>B2Rswload,
                CLR=>Rsw_CLR_openSignal,
                D(15 downto 0)=>switches(15 downto 0),
                Q(15 downto 0)=>XLXN_7(15 downto 0));
   
   R1 : FD16CE_MXILINX_S3
      port map (C=>clk,
                CE=>B2R1,
                CLR=>R1_CLR_openSignal,
                D(15 downto 0)=>bus_data(15 downto 0),
                Q(15 downto 0)=>XLXN_1(15 downto 0));
   
   R2 : FD16CE_MXILINX_S3
      port map (C=>clk,
                CE=>B2R2,
                CLR=>R2_CLR_openSignal,
                D(15 downto 0)=>bus_data(15 downto 0),
                Q(15 downto 0)=>XLXN_2(15 downto 0));
   
   R3 : FD16CE_MXILINX_S3
      port map (C=>clk,
                CE=>B2R3,
                CLR=>R3_CLR_openSignal,
                D(15 downto 0)=>bus_data(15 downto 0),
                Q(15 downto 0)=>XLXN_3(15 downto 0));
   
   R4 : FD16CE_MXILINX_S3
      port map (C=>clk,
                CE=>B2R4,
                CLR=>R4_CLR_openSignal,
                D(15 downto 0)=>bus_data(15 downto 0),
                Q(15 downto 0)=>XLXN_4(15 downto 0));
   
   R5 : FD16CE_MXILINX_S3
      port map (C=>clk,
                CE=>B2R5,
                CLR=>R5_CLR_openSignal,
                D(15 downto 0)=>bus_data(15 downto 0),
                Q(15 downto 0)=>XLXN_5(15 downto 0));
   
   R7seg : FD16CE_MXILINX_S3
      port map (C=>clk,
                CE=>B2R7seg,
                CLR=>R7seg_CLR_openSignal,
                D(15 downto 0)=>bus_data(15 downto 0),
                Q(15 downto 0)=>XLXN_8(15 downto 0));
   
   selecCO : mux2x16_MUSER_S3
      port map (D0(15 downto 0)=>XLXN_80(15 downto 0),
                D1(15 downto 0)=>bus_data(15 downto 0),
                S0=>B2CO,
                O(15 downto 0)=>XLXN_89(15 downto 0));
   
   XLXI_49 : clkdiv_MUSER_S3
      port map (clk=>clk,
                clksec=>open,
                clk190=>XLXN_79);
   
   XLXI_50 : afficheur16_MUSER_S3
      port map (clk=>XLXN_79,
                data(15 downto 0)=>XLXN_8(15 downto 0),
                anodes(3 downto 0)=>anodes(3 downto 0),
                sevenseg(6 downto 0)=>sevenseg(6 downto 0));
   
   XLXI_53 : OR2
      port map (I0=>COinc,
                I1=>B2CO,
                O=>XLXN_85);
   
   XLXI_54 : insmem
      port map (a(7 downto 0)=>COBus(7 downto 0),
                spo(15 downto 0)=>XLXN_102(15 downto 0));
   
   XLXI_60 : fsm3
      port map (clk=>clk,
                instr(15 downto 0)=>XLXN_102(15 downto 0),
                COinc=>COinc,
                dest(3 downto 0)=>dest(3 downto 0),
                RIload=>RIload,
                source(3 downto 0)=>source(3 downto 0));
   
   XLXI_61 : D4_16E_MXILINX_S3
      port map (A0=>dest(0),
                A1=>dest(1),
                A2=>dest(2),
                A3=>dest(3),
                E=>XLXN_148,
                D0=>XLXN_120,
                D1=>B2R1,
                D2=>B2R2,
                D3=>B2R3,
                D4=>B2R4,
                D5=>B2R5,
                D6=>B2Rled,
                D7=>XLXN_113,
                D8=>B2R7seg,
                D9=>B2Rsrc1,
                D10=>B2Rsrc2,
                D11=>XLXN_109,
                D12=>B2Ram,
                D13=>B2Rdm,
                D14=>B2CO,
                D15=>XLXN_105);
   
   XLXI_62 : D4_16E_MXILINX_S3
      port map (A0=>source(0),
                A1=>source(1),
                A2=>source(2),
                A3=>source(3),
                E=>XLXN_149,
                D0=>XLXN_136,
                D1=>R12B,
                D2=>R22B,
                D3=>R32B,
                D4=>R42B,
                D5=>R52B,
                D6=>Rled2B,
                D7=>Rsw2B,
                D8=>R7seg2B,
                D9=>Rsrc12B,
                D10=>Rsrc22B,
                D11=>Rdest2B,
                D12=>Ram2B,
                D13=>Rdm2B,
                D14=>CO2B,
                D15=>RI2B);
   
   XLXI_63 : VCC
      port map (P=>XLXN_148);
   
   XLXI_64 : VCC
      port map (P=>XLXN_149);
   
end BEHAVIORAL;


