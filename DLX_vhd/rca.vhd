library ieee; 
USE ieee.std_logic_1164.all; 
use ieee.numeric_std.all;

entity RCA is 
	generic (M : integer := 64);
	
	Port (	A:	In	std_logic_vector(M-1 downto 0);
		B:	In	std_logic_vector(M-1 downto 0);
		Cin:	In 	std_logic_vector(0 downto 0);
		S:	Out	std_logic_vector(M-1 downto 0)
		);
end RCA; 




architecture BEHAVIORAL of RCA is


begin
  
  S <= std_logic_vector(unsigned(A) + unsigned(B) + unsigned(Cin));
  
end BEHAVIORAL;

