----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:44:16 08/12/2013 
-- Design Name: 
-- Module Name:    fsm - Behavioral 
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

entity fsm is
    Port ( 	clk : in  STD_LOGIC;
				instr : in std_logic_vector (15 downto 0);
				source : out std_logic_vector (3 downto 0);
				dest : out std_logic_vector (3 downto 0);
				COinc, RIload : out std_logic 
			  );
end fsm;

architecture Behavioral of fsm is
-- signaux internes
signal source_i , dest_i : std_logic_vector (3 downto 0); 
signal COinc_i, RIload_i : std_logic;

-- d�claration du type state
type state_type is (chargement); 
-- d�claration etat courant et prochain
signal state, next_state : state_type; 
begin
Next_output : process (state, instr)
begin
-- init de tous les signaux internes par d�faut

COinc_i <= '0';
RIload_i <= '0';
source_i <= "0000";
dest_i <= "0000";
	case state  is
		when chargement => 
			Coinc_i <= '1';
			RIload_i <= '1';
			-- decodage de l instruciton en cours
			if instr(15 downto 12) = "0000" then
				 source_i <= instr(7 downto 4);
				 dest_i <= instr(3 downto 0);
			end if;
		when others =>
	end case;
end process;

Next_node : process (state)
begin
	next_state <= state;
	case state  is
		when chargement =>
				next_state <= chargement;
		when others =>
	end case;
end process;


Synchro : process (clk)
begin
	if clk'event and clk='1' then
		-- changement d'etat
		state <= next_state;
		-- mise a jour des ports de sortie
	 COinc <= COinc_i;
	 RIload <= RIload_i;
	 source <= source_i;
	 dest <= dest_i;
	end if;
end process;

end Behavioral;

