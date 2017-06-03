--------------------------------------------------------------------------------
-- Copyright (c) 1995-2010 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 12.4
--  \   \         Application : sch2hdl
--  /   /         Filename : add4bit_drc.vhf
-- /___/   /\     Timestamp : 10/07/2013 11:02:27
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: /usr/local/Xilinx/12.4/ISE_DS/ISE/bin/lin/unwrapped/sch2hdl -intstyle ise -family spartan3e -flat -suppress -vhdl add4bit_drc.vhf -w /home/l2/ferlicotdelbe/tp/ARCHI/TP3/add4bit.sch
--Design Name: add4bit
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

entity demiadd_MUSER_add4bit is
   port ( a : in    std_logic; 
          b : in    std_logic; 
          c : out   std_logic; 
          s : out   std_logic);
end demiadd_MUSER_add4bit;

architecture BEHAVIORAL of demiadd_MUSER_add4bit is
   attribute BOX_TYPE   : string ;
   component XOR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of XOR2 : component is "BLACK_BOX";
   
   component AND2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND2 : component is "BLACK_BOX";
   
begin
   XLXI_1 : XOR2
      port map (I0=>b,
                I1=>a,
                O=>s);
   
   XLXI_2 : AND2
      port map (I0=>b,
                I1=>a,
                O=>c);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity add1bit_MUSER_add4bit is
   port ( a    : in    std_logic; 
          b    : in    std_logic; 
          cin  : in    std_logic; 
          cout : out   std_logic; 
          s    : out   std_logic);
end add1bit_MUSER_add4bit;

architecture BEHAVIORAL of add1bit_MUSER_add4bit is
   attribute BOX_TYPE   : string ;
   signal XLXN_4 : std_logic;
   signal XLXN_5 : std_logic;
   signal XLXN_6 : std_logic;
   component demiadd_MUSER_add4bit
      port ( b : in    std_logic; 
             a : in    std_logic; 
             c : out   std_logic; 
             s : out   std_logic);
   end component;
   
   component OR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR2 : component is "BLACK_BOX";
   
begin
   XLXI_1 : demiadd_MUSER_add4bit
      port map (a=>a,
                b=>b,
                c=>XLXN_6,
                s=>XLXN_4);
   
   XLXI_2 : demiadd_MUSER_add4bit
      port map (a=>XLXN_4,
                b=>cin,
                c=>XLXN_5,
                s=>s);
   
   XLXI_3 : OR2
      port map (I0=>XLXN_6,
                I1=>XLXN_5,
                O=>cout);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity add4bit is
   port ( a    : in    std_logic_vector (3 downto 0); 
          b    : in    std_logic_vector (3 downto 0); 
          cout : out   std_logic; 
          s    : out   std_logic_vector (3 downto 0));
end add4bit;

architecture BEHAVIORAL of add4bit is
   signal XLXN_19 : std_logic;
   signal XLXN_20 : std_logic;
   signal XLXN_21 : std_logic;
   component demiadd_MUSER_add4bit
      port ( b : in    std_logic; 
             a : in    std_logic; 
             c : out   std_logic; 
             s : out   std_logic);
   end component;
   
   component add1bit_MUSER_add4bit
      port ( b    : in    std_logic; 
             a    : in    std_logic; 
             cin  : in    std_logic; 
             s    : out   std_logic; 
             cout : out   std_logic);
   end component;
   
begin
   XLXI_1 : demiadd_MUSER_add4bit
      port map (a=>a(0),
                b=>b(0),
                c=>XLXN_19,
                s=>s(0));
   
   XLXI_2 : add1bit_MUSER_add4bit
      port map (a=>a(1),
                b=>b(1),
                cin=>XLXN_19,
                cout=>XLXN_20,
                s=>s(1));
   
   XLXI_3 : add1bit_MUSER_add4bit
      port map (a=>a(2),
                b=>b(2),
                cin=>XLXN_20,
                cout=>XLXN_21,
                s=>s(2));
   
   XLXI_4 : add1bit_MUSER_add4bit
      port map (a=>a(3),
                b=>b(3),
                cin=>XLXN_21,
                cout=>cout,
                s=>s(3));
   
end BEHAVIORAL;


