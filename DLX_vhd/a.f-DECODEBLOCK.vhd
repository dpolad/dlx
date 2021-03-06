
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
--use work.myTypes.all;
--TODO: add some comments in signal assignment
entity jump_logic is
	generic (
	SIZE : integer := 32
);
  port (
	NPCF_i		: in  std_logic_vector(SIZE - 1 downto 0);
	IR_i		: in  std_logic_vector(SIZE - 1 downto 0);
	A_i		: in  std_logic_vector(SIZE - 1 downto 0);
	A_o		: out std_logic_vector(SIZE - 1 downto 0);
	rA_o		: out std_logic_vector(4 downto 0);
	rB_o		: out std_logic_vector(4 downto 0);
	rC_o		: out std_logic_vector(4 downto 0);
	branch_target_o	: out std_logic_vector(SIZE - 1 downto 0);
	sum_addr_o	: out std_logic_vector(SIZE - 1 downto 0);
	extended_imm	: out std_logic_vector(SIZE - 1 downto 0);
	taken_o		: out std_logic; --was the branch taken or not?
	FW_X_i		: in  std_logic_vector(SIZE - 1 downto 0);
	FW_W_i		: in  std_logic_vector(SIZE - 1 downto 0);
	S_FW_Adec_i	: in  std_logic_vector(1 downto 0);
	S_EXT_i		: in  std_logic;
	S_EXT_SIGN_i	: in  std_logic;
	S_MUX_LINK_i	: in  std_logic;
	S_EQ_NEQ_i	: in  std_logic 
	);
end jump_logic;

architecture struct of jump_logic is

-- component basicadd
-- 	port(
-- 	IN1	: in unsigned(SIZE - 1 downto 0);
--    	IN2	: in unsigned(SIZE - 1 downto 0);
-- 	OUT1	: out unsigned(SIZE - 1 downto 0)
-- 	);
-- end component;

component p4add
generic (
	N	: integer := 32;
	logN	: integer := 5);
Port (
	A	: in  std_logic_vector(N-1 downto 0);
	B	: in  std_logic_vector(N-1 downto 0);
	Cin	: in  std_logic;
	sign	: In  std_logic;
	S	: out std_logic_vector(N-1 downto 0);
	Cout	: out std_logic);
end component; 

component mux21
  port (
  	IN0	: in  std_logic_vector(SIZE - 1 downto 0);
	IN1	: in  std_logic_vector(SIZE - 1 downto 0);
	CTRL	: in  std_logic;
	OUT1	: out std_logic_vector(SIZE - 1 downto 0)

    );
end component;

component mux41
  generic (
	MUX_SIZE : integer :=5
	);
  port (
  	IN0	: in  std_logic_vector(MUX_SIZE - 1  downto 0);
	IN1	: in  std_logic_vector(MUX_SIZE - 1 downto 0);
	IN2	: in  std_logic_vector(MUX_SIZE - 1 downto 0);
	IN3	: in  std_logic_vector(MUX_SIZE - 1 downto 0);
	CTRL	: in  std_logic_vector(1 downto 0);
	OUT1	: out std_logic_vector(MUX_SIZE - 1 downto 0)

    );
end component;

component extender_32
	port(
	IN1	: in  std_logic_vector(SIZE - 1 downto 0);
	CTRL	: in  std_logic;                -- when 0 extend on 16 bits , when 1 extend on 26 bits
	SIGN	: in  std_logic;                -- when 0 unsigned, when 1 signed 
	OUT1	: out std_logic_vector(SIZE - 1 downto 0)
	);
end component;

component zerocheck
	port(
	IN0	: in  std_logic_vector(SIZE - 1 downto 0);
	CTRL	: in  std_logic; -- when 0, out 1 if not equal . when 1 out 1 if equal
	OUT1	: out std_logic
	);
end component;

component add4
	port(
	IN1	: in  unsigned(SIZE - 1 downto 0);
	OUT1	: out unsigned(SIZE - 1 downto 0)
	);
end component;


signal ext_imm		: std_logic_vector (SIZE - 1 downto 0);
signal sum_addr		: std_logic_vector(SIZE - 1 downto 0);
signal branch_sel	: std_logic;
signal FW_MUX_OUT	: std_logic_vector(SIZE - 1 downto 0);


begin

EXTENDER: extender_32 port map(
	IN1	=> IR_i, 
	CTRL	=> S_EXT_i,
	SIGN	=> S_EXT_SIGN_i,
	OUT1	=> ext_imm);

JUMPADDER: p4add 
	generic map (
	N => 32,
	logN => 5
	)
	port map (
	A	=> NPCF_i,
	B	=> ext_imm,
	Cin	=> '0',
	sign	=> '0',
	S	=> sum_addr,
	Cout	=> open
	);



BRANCHMUX: mux21 port map(
	IN0	=> sum_addr, 
	IN1	=> NPCF_i, 
	CTRL	=> branch_sel, 
	OUT1	=> branch_target_o);

ZC: zerocheck port map(
	IN0	=> FW_MUX_OUT, 
	CTRL	=> S_EQ_NEQ_i, 
	OUT1	=> branch_sel);


MUXLINK: mux21 port map(
	IN0	=> ext_imm,
	IN1	=> NPCF_i, 
	CTRL	=> S_MUX_LINK_i, 
	OUT1	=> extended_imm);

MUX_FWA: mux41
	generic map(
	MUX_SIZE => 32
	)
	port map(
	IN0	=> A_i, 
	IN1	=> FW_X_i, 
	IN2	=> FW_W_i, 
	IN3	=> "00000000000000000000000000000000", 
	CTRL	=> S_FW_Adec_i, 
	OUT1	=> FW_MUX_OUT
	);

rA_o		<= IR_i(25 downto 21);
rB_o		<= IR_i(20 downto 16);
rC_o		<= IR_i(15 downto 11);
A_o		<= FW_MUX_OUT;
sum_addr_o	<= sum_addr;
taken_o		<= not(branch_sel);

end struct;
