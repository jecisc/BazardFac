----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:12:23 12/02/2013 
-- Design Name: 
-- Module Name:    fsm3 - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity fsm3 is
    Port ( clk : in  STD_LOGIC;
           COinc : out  STD_LOGIC;
           RIload : out  STD_LOGIC;
           instr : in  STD_LOGIC_VECTOR (15 downto 0);
           source : out  STD_LOGIC_VECTOR (3 downto 0);
           dest : out  STD_LOGIC_VECTOR (3 downto 0));
end fsm3;

architecture Behavioral of fsm3 is

begin


end Behavioral;

