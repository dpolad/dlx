library IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;
--use work.myTypes.all;


entity dlx_regfile is
generic(
databit: natural := 32;
addrbit: natural := 5
);
port ( Clk: 		IN std_logic;
Rst: 		IN std_logic;
ENABLE: 	IN std_logic;
RD1: 		IN std_logic;
RD2: 		IN std_logic;
WR: 		IN std_logic;
ADD_WR: 	IN std_logic_vector(addrbit-1 downto 0);
ADD_RD1: 	IN std_logic_vector(addrbit-1 downto 0);
ADD_RD2: 	IN std_logic_vector(addrbit-1 downto 0);
DATAIN: 	IN std_logic_vector(databit-1 downto 0);
OUT1: 		OUT std_logic_vector(databit-1 downto 0);
OUT2: 		OUT std_logic_vector(databit-1 downto 0));
end dlx_regfile;

architecture A of dlx_regfile is

-- suggested structures
subtype REG_ADDR is natural range 0 to 31; -- using natural type
type REG_ARRAY is array(REG_ADDR) of std_logic_vector(databit-1 downto 0); 
signal REGISTERS : REG_ARRAY; 


begin 
-- write your RF code 
process(clk)
begin
	if(clk = '0' and clk'event) then
	if(Rst = '1') then
	--reset behavior
	for i in 0 to 31 loop
	REGISTERS(i) <= std_logic_vector(to_unsigned(i,databit));
	end loop;
	out1<= (others =>'0');
	out2<= (others =>'0');
	else if(enable = '1') then
	--normal behavior
		if (wr = '1') then
		--write
		REGISTERS(to_integer(unsigned(ADD_WR))) <= DATAIN;
		end if;
		if(rd1 = '1') then
		--read first
		if(wr = '1') and (ADD_RD1 = ADD_WR) then
			out1 <= DATAIN;
		else
  			out1 <= REGISTERS(to_integer(unsigned(ADD_RD1)));
		end if;
		end if;
if(rd2 = '1') then
--read second
if(wr = '1') and (ADD_RD2 = ADD_WR) then
  out2 <= DATAIN;
else
  out2 <= REGISTERS(to_integer(unsigned(ADD_RD2)));
end if;
end if;
end if;
end if;
end if;
end process;

end A;

----
