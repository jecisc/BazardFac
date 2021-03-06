--------------------------------------------------------------------------------
-- Copyright (c) 1995-2010 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 12.4
--  \   \         Application : sch2hdl
--  /   /         Filename : ALU.vhf
-- /___/   /\     Timestamp : 12/16/2013 11:04:12
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -sympath /home/l2/ferlicotdelbe/tp/ARCHI/TP09/ipcore_dir -intstyle ise -family spartan3e -flat -suppress -vhdl /home/l2/ferlicotdelbe/tp/ARCHI/TP09/ALU.vhf -w /home/l2/ferlicotdelbe/tp/ARCHI/TP09/ALU.sch
--Design Name: ALU
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

entity concat_MUSER_ALU is
   port ( a : in    std_logic_vector (15 downto 0); 
          b : in    std_logic_vector (15 downto 0); 
          s : out   std_logic_vector (15 downto 0));
end concat_MUSER_ALU;

architecture BEHAVIORAL of concat_MUSER_ALU is
   attribute BOX_TYPE   : string ;
   component BUF
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of BUF : component is "BLACK_BOX";
   
begin
   XLXI_1 : BUF
      port map (I=>a(0),
                O=>s(0));
   
   XLXI_2 : BUF
      port map (I=>a(1),
                O=>s(1));
   
   XLXI_3 : BUF
      port map (I=>a(2),
                O=>s(2));
   
   XLXI_4 : BUF
      port map (I=>a(3),
                O=>s(3));
   
   XLXI_5 : BUF
      port map (I=>a(4),
                O=>s(4));
   
   XLXI_6 : BUF
      port map (I=>a(5),
                O=>s(5));
   
   XLXI_7 : BUF
      port map (I=>a(6),
                O=>s(6));
   
   XLXI_8 : BUF
      port map (I=>a(7),
                O=>s(7));
   
   XLXI_9 : BUF
      port map (I=>b(0),
                O=>s(8));
   
   XLXI_10 : BUF
      port map (I=>b(1),
                O=>s(9));
   
   XLXI_11 : BUF
      port map (I=>b(2),
                O=>s(10));
   
   XLXI_12 : BUF
      port map (I=>b(3),
                O=>s(11));
   
   XLXI_13 : BUF
      port map (I=>b(4),
                O=>s(12));
   
   XLXI_14 : BUF
      port map (I=>b(5),
                O=>s(13));
   
   XLXI_15 : BUF
      port map (I=>b(6),
                O=>s(14));
   
   XLXI_16 : BUF
      port map (I=>b(7),
                O=>s(15));
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity INV16_MXILINX_ALU is
   port ( I : in    std_logic_vector (15 downto 0); 
          O : out   std_logic_vector (15 downto 0));
end INV16_MXILINX_ALU;

architecture BEHAVIORAL of INV16_MXILINX_ALU is
   attribute BOX_TYPE   : string ;
   component INV
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of INV : component is "BLACK_BOX";
   
begin
   I_36_30 : INV
      port map (I=>I(8),
                O=>O(8));
   
   I_36_31 : INV
      port map (I=>I(9),
                O=>O(9));
   
   I_36_32 : INV
      port map (I=>I(10),
                O=>O(10));
   
   I_36_33 : INV
      port map (I=>I(11),
                O=>O(11));
   
   I_36_34 : INV
      port map (I=>I(15),
                O=>O(15));
   
   I_36_35 : INV
      port map (I=>I(14),
                O=>O(14));
   
   I_36_36 : INV
      port map (I=>I(13),
                O=>O(13));
   
   I_36_37 : INV
      port map (I=>I(12),
                O=>O(12));
   
   I_36_38 : INV
      port map (I=>I(4),
                O=>O(4));
   
   I_36_39 : INV
      port map (I=>I(5),
                O=>O(5));
   
   I_36_40 : INV
      port map (I=>I(6),
                O=>O(6));
   
   I_36_41 : INV
      port map (I=>I(7),
                O=>O(7));
   
   I_36_42 : INV
      port map (I=>I(3),
                O=>O(3));
   
   I_36_43 : INV
      port map (I=>I(2),
                O=>O(2));
   
   I_36_44 : INV
      port map (I=>I(1),
                O=>O(1));
   
   I_36_45 : INV
      port map (I=>I(0),
                O=>O(0));
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity ADD16_MXILINX_ALU is
   port ( A   : in    std_logic_vector (15 downto 0); 
          B   : in    std_logic_vector (15 downto 0); 
          CI  : in    std_logic; 
          CO  : out   std_logic; 
          OFL : out   std_logic; 
          S   : out   std_logic_vector (15 downto 0));
end ADD16_MXILINX_ALU;

architecture BEHAVIORAL of ADD16_MXILINX_ALU is
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

entity inc_MUSER_ALU is
   port ( Din  : in    std_logic_vector (15 downto 0); 
          Dout : out   std_logic_vector (15 downto 0));
end inc_MUSER_ALU;

architecture BEHAVIORAL of inc_MUSER_ALU is
   attribute HU_SET     : string ;
   attribute BOX_TYPE   : string ;
   signal XLXN_3 : std_logic_vector (15 downto 0);
   signal XLXN_4 : std_logic;
   component ADD16_MXILINX_ALU
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
   
   attribute HU_SET of XLXI_1 : label is "XLXI_1_0";
begin
   XLXN_3(15 downto 0) <= x"0000";
   XLXI_1 : ADD16_MXILINX_ALU
      port map (A(15 downto 0)=>Din(15 downto 0),
                B(15 downto 0)=>XLXN_3(15 downto 0),
                CI=>XLXN_4,
                CO=>open,
                OFL=>open,
                S(15 downto 0)=>Dout(15 downto 0));
   
   XLXI_3 : VCC
      port map (P=>XLXN_4);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity andor_MUSER_ALU is
   port ( a    : in    std_logic_vector (15 downto 0); 
          b    : in    std_logic_vector (15 downto 0); 
          sand : out   std_logic_vector (15 downto 0); 
          sor  : out   std_logic_vector (15 downto 0));
end andor_MUSER_ALU;

architecture BEHAVIORAL of andor_MUSER_ALU is
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
      port map (I0=>a(0),
                I1=>b(0),
                O=>sor(0));
   
   XLXI_18 : OR2
      port map (I0=>a(1),
                I1=>b(1),
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
      port map (I0=>a(11),
                I1=>b(11),
                O=>sor(11));
   
   XLXI_29 : OR2
      port map (I0=>a(12),
                I1=>b(12),
                O=>sor(12));
   
   XLXI_30 : OR2
      port map (I0=>a(13),
                I1=>b(13),
                O=>sor(13));
   
   XLXI_31 : OR2
      port map (I0=>a(14),
                I1=>b(14),
                O=>sor(14));
   
   XLXI_32 : OR2
      port map (I0=>b(15),
                I1=>a(15),
                O=>sor(15));
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity M2_1_MXILINX_ALU is
   port ( D0 : in    std_logic; 
          D1 : in    std_logic; 
          S0 : in    std_logic; 
          O  : out   std_logic);
end M2_1_MXILINX_ALU;

architecture BEHAVIORAL of M2_1_MXILINX_ALU is
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

entity mux2x16_MUSER_ALU is
   port ( D0 : in    std_logic_vector (15 downto 0); 
          D1 : in    std_logic_vector (15 downto 0); 
          S0 : in    std_logic; 
          O  : out   std_logic_vector (15 downto 0));
end mux2x16_MUSER_ALU;

architecture BEHAVIORAL of mux2x16_MUSER_ALU is
   attribute HU_SET     : string ;
   component M2_1_MXILINX_ALU
      port ( D0 : in    std_logic; 
             D1 : in    std_logic; 
             S0 : in    std_logic; 
             O  : out   std_logic);
   end component;
   
   attribute HU_SET of XLXI_1 : label is "XLXI_1_1";
   attribute HU_SET of XLXI_2 : label is "XLXI_2_2";
   attribute HU_SET of XLXI_3 : label is "XLXI_3_3";
   attribute HU_SET of XLXI_4 : label is "XLXI_4_4";
   attribute HU_SET of XLXI_5 : label is "XLXI_5_5";
   attribute HU_SET of XLXI_6 : label is "XLXI_6_6";
   attribute HU_SET of XLXI_7 : label is "XLXI_7_7";
   attribute HU_SET of XLXI_8 : label is "XLXI_8_8";
   attribute HU_SET of XLXI_17 : label is "XLXI_17_16";
   attribute HU_SET of XLXI_18 : label is "XLXI_18_9";
   attribute HU_SET of XLXI_19 : label is "XLXI_19_10";
   attribute HU_SET of XLXI_20 : label is "XLXI_20_11";
   attribute HU_SET of XLXI_21 : label is "XLXI_21_12";
   attribute HU_SET of XLXI_22 : label is "XLXI_22_13";
   attribute HU_SET of XLXI_23 : label is "XLXI_23_14";
   attribute HU_SET of XLXI_24 : label is "XLXI_24_15";
begin
   XLXI_1 : M2_1_MXILINX_ALU
      port map (D0=>D0(8),
                D1=>D1(8),
                S0=>S0,
                O=>O(8));
   
   XLXI_2 : M2_1_MXILINX_ALU
      port map (D0=>D0(9),
                D1=>D1(9),
                S0=>S0,
                O=>O(9));
   
   XLXI_3 : M2_1_MXILINX_ALU
      port map (D0=>D0(10),
                D1=>D1(10),
                S0=>S0,
                O=>O(10));
   
   XLXI_4 : M2_1_MXILINX_ALU
      port map (D0=>D0(11),
                D1=>D1(11),
                S0=>S0,
                O=>O(11));
   
   XLXI_5 : M2_1_MXILINX_ALU
      port map (D0=>D0(12),
                D1=>D1(12),
                S0=>S0,
                O=>O(12));
   
   XLXI_6 : M2_1_MXILINX_ALU
      port map (D0=>D0(13),
                D1=>D1(13),
                S0=>S0,
                O=>O(13));
   
   XLXI_7 : M2_1_MXILINX_ALU
      port map (D0=>D0(14),
                D1=>D1(14),
                S0=>S0,
                O=>O(14));
   
   XLXI_8 : M2_1_MXILINX_ALU
      port map (D0=>D0(15),
                D1=>D1(15),
                S0=>S0,
                O=>O(15));
   
   XLXI_17 : M2_1_MXILINX_ALU
      port map (D0=>D0(0),
                D1=>D1(0),
                S0=>S0,
                O=>O(0));
   
   XLXI_18 : M2_1_MXILINX_ALU
      port map (D0=>D0(1),
                D1=>D1(1),
                S0=>S0,
                O=>O(1));
   
   XLXI_19 : M2_1_MXILINX_ALU
      port map (D0=>D0(2),
                D1=>D1(2),
                S0=>S0,
                O=>O(2));
   
   XLXI_20 : M2_1_MXILINX_ALU
      port map (D0=>D0(3),
                D1=>D1(3),
                S0=>S0,
                O=>O(3));
   
   XLXI_21 : M2_1_MXILINX_ALU
      port map (D0=>D0(4),
                D1=>D1(4),
                S0=>S0,
                O=>O(4));
   
   XLXI_22 : M2_1_MXILINX_ALU
      port map (D0=>D0(5),
                D1=>D1(5),
                S0=>S0,
                O=>O(5));
   
   XLXI_23 : M2_1_MXILINX_ALU
      port map (D0=>D0(6),
                D1=>D1(6),
                S0=>S0,
                O=>O(6));
   
   XLXI_24 : M2_1_MXILINX_ALU
      port map (D0=>D0(7),
                D1=>D1(7),
                S0=>S0,
                O=>O(7));
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity ADSU16_MXILINX_ALU is
   port ( A   : in    std_logic_vector (15 downto 0); 
          ADD : in    std_logic; 
          B   : in    std_logic_vector (15 downto 0); 
          CI  : in    std_logic; 
          CO  : out   std_logic; 
          OFL : out   std_logic; 
          S   : out   std_logic_vector (15 downto 0));
end ADSU16_MXILINX_ALU;

architecture BEHAVIORAL of ADSU16_MXILINX_ALU is
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
   signal SUB0     : std_logic;
   signal SUB1     : std_logic;
   signal SUB2     : std_logic;
   signal SUB3     : std_logic;
   signal SUB4     : std_logic;
   signal SUB5     : std_logic;
   signal SUB6     : std_logic;
   signal SUB7     : std_logic;
   signal SUB8     : std_logic;
   signal SUB9     : std_logic;
   signal SUB10    : std_logic;
   signal SUB11    : std_logic;
   signal SUB12    : std_logic;
   signal SUB13    : std_logic;
   signal SUB14    : std_logic;
   signal SUB15    : std_logic;
   signal CO_DUMMY : std_logic;
   component FMAP
      port ( I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             I4 : in    std_logic; 
             O  : in    std_logic);
   end component;
   attribute BOX_TYPE of FMAP : component is "BLACK_BOX";
   
   component XOR3
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of XOR3 : component is "BLACK_BOX";
   
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
   
   component INV
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of INV : component is "BLACK_BOX";
   
   attribute RLOC of I_36_16 : label is "X1Y4";
   attribute RLOC of I_36_17 : label is "X1Y4";
   attribute RLOC of I_36_18 : label is "X1Y5";
   attribute RLOC of I_36_19 : label is "X1Y5";
   attribute RLOC of I_36_20 : label is "X1Y6";
   attribute RLOC of I_36_21 : label is "X1Y6";
   attribute RLOC of I_36_22 : label is "X1Y7";
   attribute RLOC of I_36_23 : label is "X1Y7";
   attribute RLOC of I_36_55 : label is "X1Y4";
   attribute RLOC of I_36_58 : label is "X1Y5";
   attribute RLOC of I_36_62 : label is "X1Y5";
   attribute RLOC of I_36_63 : label is "X1Y6";
   attribute RLOC of I_36_64 : label is "X1Y7";
   attribute RLOC of I_36_107 : label is "X1Y7";
   attribute RLOC of I_36_110 : label is "X1Y6";
   attribute RLOC of I_36_111 : label is "X1Y4";
   attribute RLOC of I_36_248 : label is "X1Y3";
   attribute RLOC of I_36_249 : label is "X1Y3";
   attribute RLOC of I_36_250 : label is "X1Y2";
   attribute RLOC of I_36_251 : label is "X1Y2";
   attribute RLOC of I_36_252 : label is "X1Y1";
   attribute RLOC of I_36_253 : label is "X1Y1";
   attribute RLOC of I_36_254 : label is "X1Y0";
   attribute RLOC of I_36_255 : label is "X1Y0";
   attribute RLOC of I_36_272 : label is "X1Y0";
   attribute RLOC of I_36_275 : label is "X1Y0";
   attribute RLOC of I_36_279 : label is "X1Y1";
   attribute RLOC of I_36_283 : label is "X1Y1";
   attribute RLOC of I_36_287 : label is "X1Y2";
   attribute RLOC of I_36_291 : label is "X1Y2";
   attribute RLOC of I_36_295 : label is "X1Y3";
   attribute RLOC of I_36_299 : label is "X1Y3";
begin
   CO <= CO_DUMMY;
   I_36_16 : FMAP
      port map (I1=>A(8),
                I2=>B(8),
                I3=>ADD,
                I4=>dummy,
                O=>I8);
   
   I_36_17 : FMAP
      port map (I1=>A(9),
                I2=>B(9),
                I3=>ADD,
                I4=>dummy,
                O=>I9);
   
   I_36_18 : FMAP
      port map (I1=>A(10),
                I2=>B(10),
                I3=>ADD,
                I4=>dummy,
                O=>I10);
   
   I_36_19 : FMAP
      port map (I1=>A(11),
                I2=>B(11),
                I3=>ADD,
                I4=>dummy,
                O=>I11);
   
   I_36_20 : FMAP
      port map (I1=>A(12),
                I2=>B(12),
                I3=>ADD,
                I4=>dummy,
                O=>I12);
   
   I_36_21 : FMAP
      port map (I1=>A(13),
                I2=>B(13),
                I3=>ADD,
                I4=>dummy,
                O=>I13);
   
   I_36_22 : FMAP
      port map (I1=>A(14),
                I2=>B(14),
                I3=>ADD,
                I4=>dummy,
                O=>I14);
   
   I_36_23 : FMAP
      port map (I1=>A(15),
                I2=>B(15),
                I3=>ADD,
                I4=>dummy,
                O=>I15);
   
   I_36_50 : XOR3
      port map (I0=>A(8),
                I1=>B(8),
                I2=>SUB8,
                O=>I8);
   
   I_36_55 : MUXCY_L
      port map (CI=>C8,
                DI=>A(9),
                S=>I9,
                LO=>C9);
   
   I_36_56 : XOR3
      port map (I0=>A(10),
                I1=>B(10),
                I2=>SUB10,
                O=>I10);
   
   I_36_57 : XOR3
      port map (I0=>A(11),
                I1=>B(11),
                I2=>SUB11,
                O=>I11);
   
   I_36_58 : MUXCY_L
      port map (CI=>C10,
                DI=>A(11),
                S=>I11,
                LO=>C11);
   
   I_36_59 : XOR3
      port map (I0=>A(14),
                I1=>B(14),
                I2=>SUB14,
                O=>I14);
   
   I_36_60 : XOR3
      port map (I0=>A(12),
                I1=>B(12),
                I2=>SUB12,
                O=>I12);
   
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
   
   I_36_79 : XOR3
      port map (I0=>A(15),
                I1=>B(15),
                I2=>SUB15,
                O=>I15);
   
   I_36_80 : XORCY
      port map (CI=>C14,
                LI=>I15,
                O=>S(15));
   
   I_36_81 : XORCY
      port map (CI=>C13,
                LI=>I14,
                O=>S(14));
   
   I_36_100 : XOR3
      port map (I0=>A(9),
                I1=>B(9),
                I2=>SUB9,
                O=>I9);
   
   I_36_107 : MUXCY_D
      port map (CI=>C13,
                DI=>A(14),
                S=>I14,
                LO=>C14,
                O=>C14O);
   
   I_36_109 : XOR3
      port map (I0=>A(13),
                I1=>B(13),
                I2=>SUB13,
                O=>I13);
   
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
   
   I_36_220 : XOR3
      port map (I0=>A(0),
                I1=>B(0),
                I2=>SUB0,
                O=>I0);
   
   I_36_222 : XOR3
      port map (I0=>A(2),
                I1=>B(2),
                I2=>SUB2,
                O=>I2);
   
   I_36_223 : XOR3
      port map (I0=>A(3),
                I1=>B(3),
                I2=>SUB3,
                O=>I3);
   
   I_36_224 : XOR3
      port map (I0=>A(6),
                I1=>B(6),
                I2=>SUB6,
                O=>I6);
   
   I_36_225 : XOR3
      port map (I0=>A(4),
                I1=>B(4),
                I2=>SUB4,
                O=>I4);
   
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
   
   I_36_232 : XOR3
      port map (I0=>A(7),
                I1=>B(7),
                I2=>SUB7,
                O=>I7);
   
   I_36_233 : XORCY
      port map (CI=>C6,
                LI=>I7,
                O=>S(7));
   
   I_36_234 : XORCY
      port map (CI=>C5,
                LI=>I6,
                O=>S(6));
   
   I_36_243 : XOR3
      port map (I0=>A(1),
                I1=>B(1),
                I2=>SUB1,
                O=>I1);
   
   I_36_245 : XOR3
      port map (I0=>A(5),
                I1=>B(5),
                I2=>SUB5,
                O=>I5);
   
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
                I3=>ADD,
                I4=>dummy,
                O=>I1);
   
   I_36_275 : FMAP
      port map (I1=>A(0),
                I2=>B(0),
                I3=>ADD,
                I4=>dummy,
                O=>I0);
   
   I_36_279 : FMAP
      port map (I1=>A(2),
                I2=>B(2),
                I3=>ADD,
                I4=>dummy,
                O=>I2);
   
   I_36_283 : FMAP
      port map (I1=>A(3),
                I2=>B(3),
                I3=>ADD,
                I4=>dummy,
                O=>I3);
   
   I_36_287 : FMAP
      port map (I1=>A(4),
                I2=>B(4),
                I3=>ADD,
                I4=>dummy,
                O=>I4);
   
   I_36_291 : FMAP
      port map (I1=>A(5),
                I2=>B(5),
                I3=>ADD,
                I4=>dummy,
                O=>I5);
   
   I_36_295 : FMAP
      port map (I1=>A(6),
                I2=>B(6),
                I3=>ADD,
                I4=>dummy,
                O=>I6);
   
   I_36_299 : FMAP
      port map (I1=>A(7),
                I2=>B(7),
                I3=>ADD,
                I4=>dummy,
                O=>I7);
   
   I_36_353 : XOR2
      port map (I0=>C14O,
                I1=>CO_DUMMY,
                O=>OFL);
   
   I_36_355 : INV
      port map (I=>ADD,
                O=>SUB0);
   
   I_36_356 : INV
      port map (I=>ADD,
                O=>SUB1);
   
   I_36_357 : INV
      port map (I=>ADD,
                O=>SUB2);
   
   I_36_358 : INV
      port map (I=>ADD,
                O=>SUB3);
   
   I_36_359 : INV
      port map (I=>ADD,
                O=>SUB4);
   
   I_36_360 : INV
      port map (I=>ADD,
                O=>SUB5);
   
   I_36_361 : INV
      port map (I=>ADD,
                O=>SUB6);
   
   I_36_362 : INV
      port map (I=>ADD,
                O=>SUB7);
   
   I_36_363 : INV
      port map (I=>ADD,
                O=>SUB8);
   
   I_36_364 : INV
      port map (I=>ADD,
                O=>SUB9);
   
   I_36_365 : INV
      port map (I=>ADD,
                O=>SUB10);
   
   I_36_366 : INV
      port map (I=>ADD,
                O=>SUB11);
   
   I_36_367 : INV
      port map (I=>ADD,
                O=>SUB12);
   
   I_36_368 : INV
      port map (I=>ADD,
                O=>SUB13);
   
   I_36_369 : INV
      port map (I=>ADD,
                O=>SUB14);
   
   I_36_370 : INV
      port map (I=>ADD,
                O=>SUB15);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity ALU is
   port ( a  : in    std_logic_vector (15 downto 0); 
          b  : in    std_logic_vector (15 downto 0); 
          op : in    std_logic_vector (3 downto 0); 
          s  : out   std_logic_vector (15 downto 0));
end ALU;

architecture BEHAVIORAL of ALU is
   attribute HU_SET     : string ;
   signal XLXN_4               : std_logic_vector (15 downto 0);
   signal XLXN_5               : std_logic_vector (15 downto 0);
   signal XLXN_6               : std_logic_vector (15 downto 0);
   signal XLXN_7               : std_logic_vector (15 downto 0);
   signal XLXN_8               : std_logic_vector (15 downto 0);
   signal XLXN_9               : std_logic_vector (15 downto 0);
   signal XLXN_10              : std_logic_vector (15 downto 0);
   signal XLXN_11              : std_logic_vector (15 downto 0);
   signal XLXN_12              : std_logic_vector (15 downto 0);
   signal XLXN_13              : std_logic_vector (15 downto 0);
   signal XLXN_14              : std_logic_vector (15 downto 0);
   signal XLXN_220             : std_logic_vector (15 downto 0);
   signal XLXN_308             : std_logic_vector (15 downto 0);
   signal XLXN_309             : std_logic_vector (15 downto 0);
   signal XLXN_310             : std_logic_vector (15 downto 0);
   signal XLXN_311             : std_logic_vector (15 downto 0);
   signal XLXN_312             : std_logic_vector (15 downto 0);
   signal XLXN_313             : std_logic_vector (15 downto 0);
   signal XLXN_314             : std_logic_vector (15 downto 0);
   signal XLXI_4_D0_openSignal : std_logic_vector (15 downto 0);
   signal XLXI_4_D1_openSignal : std_logic_vector (15 downto 0);
   signal XLXI_5_D0_openSignal : std_logic_vector (15 downto 0);
   signal XLXI_5_D1_openSignal : std_logic_vector (15 downto 0);
   signal XLXI_6_D0_openSignal : std_logic_vector (15 downto 0);
   signal XLXI_6_D1_openSignal : std_logic_vector (15 downto 0);
   component mux2x16_MUSER_ALU
      port ( D0 : in    std_logic_vector (15 downto 0); 
             D1 : in    std_logic_vector (15 downto 0); 
             S0 : in    std_logic; 
             O  : out   std_logic_vector (15 downto 0));
   end component;
   
   component ADSU16_MXILINX_ALU
      port ( A   : in    std_logic_vector (15 downto 0); 
             ADD : in    std_logic; 
             B   : in    std_logic_vector (15 downto 0); 
             CI  : in    std_logic; 
             CO  : out   std_logic; 
             OFL : out   std_logic; 
             S   : out   std_logic_vector (15 downto 0));
   end component;
   
   component INV16_MXILINX_ALU
      port ( I : in    std_logic_vector (15 downto 0); 
             O : out   std_logic_vector (15 downto 0));
   end component;
   
   component andor_MUSER_ALU
      port ( a    : in    std_logic_vector (15 downto 0); 
             b    : in    std_logic_vector (15 downto 0); 
             sor  : out   std_logic_vector (15 downto 0); 
             sand : out   std_logic_vector (15 downto 0));
   end component;
   
   component inc_MUSER_ALU
      port ( Din  : in    std_logic_vector (15 downto 0); 
             Dout : out   std_logic_vector (15 downto 0));
   end component;
   
   component concat_MUSER_ALU
      port ( a : in    std_logic_vector (15 downto 0); 
             b : in    std_logic_vector (15 downto 0); 
             s : out   std_logic_vector (15 downto 0));
   end component;
   
   attribute HU_SET of XLXI_155 : label is "XLXI_155_17";
   attribute HU_SET of XLXI_199 : label is "XLXI_199_18";
   attribute HU_SET of XLXI_204 : label is "XLXI_204_19";
begin
   XLXI_1 : mux2x16_MUSER_ALU
      port map (D0(15 downto 0)=>XLXN_308(15 downto 0),
                D1(15 downto 0)=>XLXN_310(15 downto 0),
                S0=>op(0),
                O(15 downto 0)=>XLXN_4(15 downto 0));
   
   XLXI_2 : mux2x16_MUSER_ALU
      port map (D0(15 downto 0)=>XLXN_309(15 downto 0),
                D1(15 downto 0)=>XLXN_311(15 downto 0),
                S0=>op(0),
                O(15 downto 0)=>XLXN_5(15 downto 0));
   
   XLXI_3 : mux2x16_MUSER_ALU
      port map (D0(15 downto 0)=>XLXN_312(15 downto 0),
                D1(15 downto 0)=>XLXN_314(15 downto 0),
                S0=>op(0),
                O(15 downto 0)=>XLXN_6(15 downto 0));
   
   XLXI_4 : mux2x16_MUSER_ALU
      port map (D0(15 downto 0)=>XLXI_4_D0_openSignal(15 downto 0),
                D1(15 downto 0)=>XLXI_4_D1_openSignal(15 downto 0),
                S0=>op(0),
                O(15 downto 0)=>XLXN_7(15 downto 0));
   
   XLXI_5 : mux2x16_MUSER_ALU
      port map (D0(15 downto 0)=>XLXI_5_D0_openSignal(15 downto 0),
                D1(15 downto 0)=>XLXI_5_D1_openSignal(15 downto 0),
                S0=>op(0),
                O(15 downto 0)=>XLXN_8(15 downto 0));
   
   XLXI_6 : mux2x16_MUSER_ALU
      port map (D0(15 downto 0)=>XLXI_6_D0_openSignal(15 downto 0),
                D1(15 downto 0)=>XLXI_6_D1_openSignal(15 downto 0),
                S0=>op(0),
                O(15 downto 0)=>XLXN_9(15 downto 0));
   
   XLXI_7 : mux2x16_MUSER_ALU
      port map (D0(15 downto 0)=>XLXN_4(15 downto 0),
                D1(15 downto 0)=>XLXN_5(15 downto 0),
                S0=>op(1),
                O(15 downto 0)=>XLXN_10(15 downto 0));
   
   XLXI_8 : mux2x16_MUSER_ALU
      port map (D0(15 downto 0)=>XLXN_6(15 downto 0),
                D1(15 downto 0)=>XLXN_7(15 downto 0),
                S0=>op(1),
                O(15 downto 0)=>XLXN_11(15 downto 0));
   
   XLXI_9 : mux2x16_MUSER_ALU
      port map (D0(15 downto 0)=>XLXN_8(15 downto 0),
                D1(15 downto 0)=>XLXN_9(15 downto 0),
                S0=>op(1),
                O(15 downto 0)=>XLXN_12(15 downto 0));
   
   XLXI_10 : mux2x16_MUSER_ALU
      port map (D0(15 downto 0)=>XLXN_220(15 downto 0),
                D1(15 downto 0)=>XLXN_10(15 downto 0),
                S0=>op(2),
                O(15 downto 0)=>XLXN_14(15 downto 0));
   
   XLXI_11 : mux2x16_MUSER_ALU
      port map (D0(15 downto 0)=>XLXN_11(15 downto 0),
                D1(15 downto 0)=>XLXN_12(15 downto 0),
                S0=>op(2),
                O(15 downto 0)=>XLXN_13(15 downto 0));
   
   XLXI_12 : mux2x16_MUSER_ALU
      port map (D0(15 downto 0)=>XLXN_14(15 downto 0),
                D1(15 downto 0)=>XLXN_13(15 downto 0),
                S0=>op(3),
                O(15 downto 0)=>s(15 downto 0));
   
   XLXI_155 : ADSU16_MXILINX_ALU
      port map (A(15 downto 0)=>a(15 downto 0),
                ADD=>op(0),
                B(15 downto 0)=>b(15 downto 0),
                CI=>op(1),
                CO=>open,
                OFL=>open,
                S(15 downto 0)=>XLXN_220(15 downto 0));
   
   XLXI_199 : INV16_MXILINX_ALU
      port map (I(15 downto 0)=>a(15 downto 0),
                O(15 downto 0)=>XLXN_308(15 downto 0));
   
   XLXI_201 : andor_MUSER_ALU
      port map (a(15 downto 0)=>a(15 downto 0),
                b(15 downto 0)=>b(15 downto 0),
                sand(15 downto 0)=>XLXN_310(15 downto 0),
                sor(15 downto 0)=>XLXN_309(15 downto 0));
   
   XLXI_202 : inc_MUSER_ALU
      port map (Din(15 downto 0)=>a(15 downto 0),
                Dout(15 downto 0)=>XLXN_311(15 downto 0));
   
   XLXI_203 : inc_MUSER_ALU
      port map (Din(15 downto 0)=>XLXN_313(15 downto 0),
                Dout(15 downto 0)=>XLXN_312(15 downto 0));
   
   XLXI_204 : INV16_MXILINX_ALU
      port map (I(15 downto 0)=>a(15 downto 0),
                O(15 downto 0)=>XLXN_313(15 downto 0));
   
   XLXI_205 : concat_MUSER_ALU
      port map (a(15 downto 0)=>a(15 downto 0),
                b(15 downto 0)=>b(15 downto 0),
                s(15 downto 0)=>XLXN_314(15 downto 0));
   
end BEHAVIORAL;


