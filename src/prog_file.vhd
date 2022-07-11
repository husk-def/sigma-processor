library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;

entity instr_rom is
    Port ( iA : in  std_logic_vector (7 downto 0);
           oQ : out  std_logic_vector (31 downto 0));
end instr_rom;

architecture Behavioral of instr_rom is
begin
	oQ <=
	"11000000000111110000000000000010"	when iA(7 downto 2) = 0 else	 -- ADDC
	"11000000001111110000000000000011"	when iA(7 downto 2) = 1 else	 -- ADDC
	"11000000010111110000000000000100"	when iA(7 downto 2) = 2 else	 -- ADDC
	"11000000011111110000000000000100"	when iA(7 downto 2) = 3 else	 -- ADDC
	"11000000100111110000000000000100"	when iA(7 downto 2) = 4 else	 -- ADDC
	"11000000101111110000000000000100"	when iA(7 downto 2) = 5 else	 -- ADDC
	"11000000110111110000000000000100"	when iA(7 downto 2) = 6 else	 -- ADDC
	"10000000111111111111100000000000"	when iA(7 downto 2) = 7 else	 -- ADD
	"11000000110111110000000000000100"	when iA(7 downto 2) = 8 else	 -- ADDC
	"00000000000000000000000000000000";
end Behavioral;
------------------------------------------------------------------
