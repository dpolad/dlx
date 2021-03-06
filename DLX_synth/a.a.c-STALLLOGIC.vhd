
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_misc.all;
use work.myTypes.all;
--use ieee.numeric_std.all;
--use work.all;

entity stall_logic is
  generic (
    FUNC_SIZE          :     integer := 11;  -- Func Field Size for R-Type Ops
    OP_CODE_SIZE       :     integer := 6  -- Op Code Size
);
  port (
    -- Instruction Register
    OPCODE_i		: in  std_logic_vector(OP_CODE_SIZE-1  downto 0);
    FUNC_i		: in  std_logic_vector(FUNC_SIZE-1  downto 0);
    rA_i		: in  std_logic_vector(4 downto 0);
    rB_i		: in  std_logic_vector(4 downto 0);
    D1_i		: in  std_logic_vector(4 downto 0); -- taken from output of destination mux in EXE stage
    D2_i		: in  std_logic_vector(4 downto 0);
    S_mem_LOAD_i	: in  std_logic;
    S_exe_LOAD_i	: in  std_logic;
    S_exe_WRITE_i	: in  std_logic;
    S_MUX_PC_BUS_i	: in  std_logic_vector(1 downto 0);
    mispredict_i	: in  std_logic;
    bubble_dec_o	: out std_logic;
    bubble_exe_o	: out std_logic;
    stall_exe_o		: out std_logic;
    stall_dec_o		: out std_logic;
    stall_btb_o		: out std_logic;
    stall_fetch_o	: out std_logic
   

);
end stall_logic;

architecture stall_logic_hw of stall_logic is

signal IS_JMP_BRANCH		: std_logic;
signal STALL_JMP_BRANCH_DECODE	: std_logic;
signal STALL_JMP_BRANCH_LOAD	: std_logic;
signal STALL_LOAD_RTYPE		: std_logic;
signal STALL_LOAD_ITYPE		: std_logic;
signal IS_NO_STALL		: std_logic;
signal IS_JMP			: std_logic;
signal stall_dec_help		: std_logic;

begin

-- every jump operation but branches
IS_JMP <= S_MUX_PC_BUS_i(1) xor S_MUX_PC_BUS_i(0);

-- TODO: need to add JALR???
-- this operation might have an hazard on decode stage ( need to access A )
IS_JMP_BRANCH <= (not or_reduce(OPCODE_i xor ITYPE_JR)) or (not or_reduce(OPCODE_i xor ITYPE_JALR)) or (not or_reduce(OPCODE_i xor ITYPE_BEQZ)) or (not or_reduce(OPCODE_i xor ITYPE_BNEZ));

-- jump operation that wont trigger any hazard ( do not require data from registers )
IS_NO_STALL <= (not or_reduce(OPCODE_i xor ITYPE_J)) or (not or_reduce(OPCODE_i xor ITYPE_JAL)) or (not or_reduce(OPCODE_i xor ITYPE_TRAP)) or (not or_reduce(OPCODE_i xor ITYPE_RFE)) or (not or_reduce(OPCODE_i xor ITYPE_NOP)); 

-- stall if current decoded instruction is JMP/BRANCH and it needs the same register as the one that will be written by current op in EXE
STALL_JMP_BRANCH_DECODE <= IS_JMP_BRANCH and S_exe_WRITE_i and (not or_reduce(rA_i xor D1_i));

-- stall if current decoded instruction is JMP/BRANCH and it needs the same register as the one that will be written by current LOAD
STALL_JMP_BRANCH_LOAD <= IS_JMP_BRANCH and S_mem_LOAD_i and (not or_reduce(rA_i xor D2_i));

-- TODO: check if all R type operations need both A and B
-- stall if there is data dependency between current op in dec and the next is a LOAD
STALL_LOAD_RTYPE <= S_exe_LOAD_i and (not or_reduce(OPCODE_i xor RTYPE)) and ( (not or_reduce(rA_i xor D1_i)) or (not or_reduce(rB_i xor D1_i))) ;

-- TODO: check if all ITYPE operation require A (  also already checked in IS_NO_STALL )
-- ITYPE instructions only need to look at A
STALL_LOAD_ITYPE <= S_exe_LOAD_i and (or_reduce(OPCODE_i xor RTYPE)) and (not IS_NO_STALL) and (not or_reduce(rA_i xor D1_i)) ;
 

--exe is never stopped at the moment
stall_exe_o <= '0'; 

-- stalls for ALL hazards + jumps 
stall_dec_o <= stall_dec_help;
stall_dec_help <= STALL_JMP_BRANCH_LOAD or STALL_JMP_BRANCH_DECODE or STALL_LOAD_RTYPE or STALL_LOAD_ITYPE; 
-- stalls for ALL hazards + jumps 
stall_btb_o <= STALL_JMP_BRANCH_LOAD or STALL_JMP_BRANCH_DECODE or STALL_LOAD_RTYPE or STALL_LOAD_ITYPE ;

-- stall only in case of hazard, not for jumps
stall_fetch_o <= STALL_JMP_BRANCH_LOAD or STALL_JMP_BRANCH_DECODE or STALL_LOAD_RTYPE or STALL_LOAD_ITYPE;

-- bubble is triggered only for mispredictions or unpredictable jumps
bubble_dec_o <= mispredict_i and (not stall_dec_help);
bubble_exe_o <= stall_dec_help;

end stall_logic_hw;

