library ieee; 
use ieee.std_logic_1164.all; 

entity piso_r_2 is 
  generic(
	N : natural := 8
	);
  port(
	Clock	: in std_logic; 
	ALOAD	: in std_logic; 
	D  	: in std_logic_vector(N-1 downto 0); 
	SO 	: out std_logic_vector(N-1 downto 0)
	); 
end piso_r_2; 

architecture archi of piso_r_2 is 
  signal tmp: std_logic_vector(N-1 downto 0); 
  begin  
    process (Clock) 
      begin 
        if (Clock'event and Clock='1') then 
	  if (ALOAD='1') then 
            tmp <= D;
          else
            tmp <= tmp(N-3 downto 0) & "00"; 
          end if; 
        end if;
    end process; 
    SO <= tmp; 
end archi; 
