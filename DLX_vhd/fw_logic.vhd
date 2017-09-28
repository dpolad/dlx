

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_misc.all;
--use work.myTypes.all;

entity fw_logic is
  port (
	D1_i		: in std_logic_vector(4 downto 0); -- taken from output of destination mux in EXE stage
	rAdec_i		: in std_logic_vector(4 downto 0); -- taken from IR directly in DEC stage
	D2_i		: in std_logic_vector(4 downto 0);
	D3_i		: in std_logic_vector(4 downto 0);
	rA_i		: in std_logic_vector(4 downto 0);
	rB_i		: in std_logic_vector(4 downto 0);
	S_mem_W		: in std_logic; -- will the current instruction in MEM stage write to RF?
	S_mem_LOAD	: in std_logic; -- is the current instruction in MEM stage a LOAD?
	S_wb_W		: in std_logic; -- will the current instruction in WB stage write to RF?
	S_exe_W		: in std_logic; -- will the current instruction in EXE stage write to RF?
	S_FWAdec	: out std_logic_vector(1 downto 0); -- this signal controls forward of A in DEC stage
	S_FWA		: out std_logic_vector(1 downto 0);
	S_FWB		: out std_logic_vector(1 downto 0)
	);
end fw_logic;

architecture Beh of fw_logic is

signal S_FWA_wb		: std_logic;
signal S_FWB_wb		: std_logic;
signal S_FWAdec_wb	: std_logic;

signal S_FWA_mem	: std_logic;
signal S_FWB_mem	: std_logic;
signal S_FWAdec_mem	: std_logic;


begin

-- TODO: check forwardability looking at CU control signals, in particular if WE on RF is 1 or 0
-- TODO: add forward to memory input ( ONLY NEEDED IN CASE OF LOAD AND STORE IN THE NEXT CC ) should not
-- 	cause any STALL, also need to remove stalling when STORE is after LOAD


-- is A, B, preA forwardable from wb stage?
S_FWA_wb	<= S_wb_W and (not or_reduce(rA_i xor D3_i)); 
S_FWB_wb	<= S_wb_W and (not or_reduce(rB_i xor D3_i));
S_FWAdec_wb	<= S_wb_W and (not or_reduce(rAdec_i xor D3_i)); 


-- is A or B forwardable from mem stage?
-- in this case we are also checking if we are not loading, in that case there is no need to forward
S_FWA_mem	<= S_mem_W and (not S_mem_LOAD) and (not or_reduce(rA_i xor D2_i));
S_FWB_mem	<= S_mem_W and (not S_mem_LOAD) and (not or_reduce(rB_i xor D2_i));
S_FWAdec_mem	<= S_mem_W and (not S_mem_LOAD) and (not or_reduce(rAdec_i xor D2_i));




--pick up the right forwarding source
S_FWA <=	"00" when S_FWA_mem = '0' and S_FWA_wb = '0' else
	 	"01" when S_FWA_mem = '1' else
		"10" when S_FWA_mem = '0' and S_FWA_wb = '1' else
		"XX";

S_FWB <=	"00" when S_FWB_mem = '0' and S_FWB_wb = '0' else
	 	"01" when S_FWB_mem = '1' else
		"10" when S_FWB_mem = '0' and S_FWB_wb = '1' else
		"XX";

S_FWAdec <=	"00" when S_FWAdec_mem = '0' and S_FWAdec_wb = '0' else
	 	"01" when S_FWAdec_mem = '1' else
		"10" when S_FWAdec_mem = '0' and S_FWAdec_wb = '1' else
		"XX";


end Beh;