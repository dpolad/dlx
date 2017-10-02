-- add4.vhd -- 
-- This component is an adder which has a single imput
-- output is always = input + 4



library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
--use work.myTypes.all;

entity add4 is
	generic (
	SIZE : integer := 32
);
  port (
	IN1	: in unsigned(SIZE - 1 downto 0);
	OUT1	: out unsigned(SIZE - 1 downto 0)

	);
end add4;

architecture Bhe of add4 is

begin

	OUT1 <= IN1+4;

end Bhe;
