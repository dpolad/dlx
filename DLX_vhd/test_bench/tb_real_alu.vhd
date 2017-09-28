
library IEEE;

use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;
use WORK.all;
use work.myTypes.all;

entity tb_real_alu is
end tb_real_alu;

architecture TEST of tb_real_alu is

--component boothmul_pipelined
component real_alu
  generic (
    DATA_SIZE : integer := 32);
  port (
    IN1 : in  std_logic_vector(DATA_SIZE - 1 downto 0);
    IN2 : in  std_logic_vector(DATA_SIZE - 1 downto 0);
    OP : in AluOp;
    DOUT : out std_logic_vector(DATA_SIZE - 1 downto 0);
    ZEROUT : out std_logic;
    stall_o : out std_logic;
    Clock : in std_logic;
    Reset : in std_logic
    );

end component;


signal fakeA,fakeB : std_logic_vector(31 downto 0);
signal fakeOUT : std_logic_vector(31 downto 0);
signal fakeOP : AluOp;
signal Clock,Reset : std_logic := '0';
signal A : signed(31 downto 0):= to_signed(-1000,32);
signal B : signed(31 downto 0):= to_signed(-1000,32);

signal enable  : std_logic := '0';
signal busy : std_logic;

begin

--UT: boothmul_pipelined Port Map (Clock,Reset,fakeS,fakeA,fakeB,fakeP);
UT: real_alu 
generic map (DATA_SIZE => 32)
Port Map (fakeA,fakeB,fakeOP,fakeOUT,open,busy,Clock,Reset);

fakeA <= std_logic_vector(A);
fakeB <= std_logic_vector(B);
fakeOP <= MULTS;
PCLOCK : process(Clock)
	begin
		Clock <= not(Clock) after 0.5 ns;	
	end process;

addvalue: process(Clock)
	begin
	if clock = '1' and clock'event then
		if busy = '0' and enable = '0' then
			 report "BLLLL";
			A <= A+1;
			enable <= '1';
			if A = 0 then
				B <= B+1;
			end if;
		else
			enable <= '0';
		end if;
--	assert unsigned(fakeP) = unsigned(P_reg(8)) report integer'image(to_integer(unsigned(fakeP))) & "-" &  integer'image(to_integer(unsigned(P_reg(8))))  severity error;
	end if;
	end process;

	
	Reset <= '1', '0' after 4 ns;
end TEST;
