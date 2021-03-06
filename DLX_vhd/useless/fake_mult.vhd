
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity fake_mult is
  generic (
    DATA_SIZE : integer := 32);
  port (
    IN1 : in  std_logic_vector(DATA_SIZE - 1 downto 0);
    IN2 : in  std_logic_vector(DATA_SIZE - 1 downto 0);
    DOUT : out std_logic_vector(DATA_SIZE - 1 downto 0);
    stall_o : out std_logic;
    enable : in std_logic;
    Clock : in std_logic;
    Reset : in std_logic
    );

end fake_mult;

architecture Bhe of fake_mult is		
signal count : unsigned(2 downto 0);

begin
process(enable,Reset,Clock)
begin
if Reset = '1' then
    DOUT <= X"00000000";
    stall_o <= '0';
    count <= "000";
else
	if enable = '1' and enable'event then
		stall_o <= '1';
		count <= "111";
		DOUT <= "00000000000000000000000000001000";
	end if;
	if enable = '1' and Clock = '1' and clock'event then
	
	DOUT <= "00000000000000000000000000000"&std_logic_vector(count);
	if count/="000" then
		count <= count-1;
	end if;
	if count = "000" then
		stall_o <= '0';
		DOUT <= X"11111111";
	end if;
	end if;
end if;
end process;



end Bhe;