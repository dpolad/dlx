onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -label clk /tb_top_level/Clock
add wave -noupdate -label rst /tb_top_level/Reset
add wave -noupdate -label PC -radix unsigned -childformat {{/tb_top_level/DUT/UFETCH_BLOCK/PC/Q(31) -radix unsigned} {/tb_top_level/DUT/UFETCH_BLOCK/PC/Q(30) -radix unsigned} {/tb_top_level/DUT/UFETCH_BLOCK/PC/Q(29) -radix unsigned} {/tb_top_level/DUT/UFETCH_BLOCK/PC/Q(28) -radix unsigned} {/tb_top_level/DUT/UFETCH_BLOCK/PC/Q(27) -radix unsigned} {/tb_top_level/DUT/UFETCH_BLOCK/PC/Q(26) -radix unsigned} {/tb_top_level/DUT/UFETCH_BLOCK/PC/Q(25) -radix unsigned} {/tb_top_level/DUT/UFETCH_BLOCK/PC/Q(24) -radix unsigned} {/tb_top_level/DUT/UFETCH_BLOCK/PC/Q(23) -radix unsigned} {/tb_top_level/DUT/UFETCH_BLOCK/PC/Q(22) -radix unsigned} {/tb_top_level/DUT/UFETCH_BLOCK/PC/Q(21) -radix unsigned} {/tb_top_level/DUT/UFETCH_BLOCK/PC/Q(20) -radix unsigned} {/tb_top_level/DUT/UFETCH_BLOCK/PC/Q(19) -radix unsigned} {/tb_top_level/DUT/UFETCH_BLOCK/PC/Q(18) -radix unsigned} {/tb_top_level/DUT/UFETCH_BLOCK/PC/Q(17) -radix unsigned} {/tb_top_level/DUT/UFETCH_BLOCK/PC/Q(16) -radix unsigned} {/tb_top_level/DUT/UFETCH_BLOCK/PC/Q(15) -radix unsigned} {/tb_top_level/DUT/UFETCH_BLOCK/PC/Q(14) -radix unsigned} {/tb_top_level/DUT/UFETCH_BLOCK/PC/Q(13) -radix unsigned} {/tb_top_level/DUT/UFETCH_BLOCK/PC/Q(12) -radix unsigned} {/tb_top_level/DUT/UFETCH_BLOCK/PC/Q(11) -radix unsigned} {/tb_top_level/DUT/UFETCH_BLOCK/PC/Q(10) -radix unsigned} {/tb_top_level/DUT/UFETCH_BLOCK/PC/Q(9) -radix unsigned} {/tb_top_level/DUT/UFETCH_BLOCK/PC/Q(8) -radix unsigned} {/tb_top_level/DUT/UFETCH_BLOCK/PC/Q(7) -radix unsigned} {/tb_top_level/DUT/UFETCH_BLOCK/PC/Q(6) -radix unsigned} {/tb_top_level/DUT/UFETCH_BLOCK/PC/Q(5) -radix unsigned} {/tb_top_level/DUT/UFETCH_BLOCK/PC/Q(4) -radix unsigned} {/tb_top_level/DUT/UFETCH_BLOCK/PC/Q(3) -radix unsigned} {/tb_top_level/DUT/UFETCH_BLOCK/PC/Q(2) -radix unsigned} {/tb_top_level/DUT/UFETCH_BLOCK/PC/Q(1) -radix unsigned} {/tb_top_level/DUT/UFETCH_BLOCK/PC/Q(0) -radix unsigned}} -subitemconfig {/tb_top_level/DUT/UFETCH_BLOCK/PC/Q(31) {-height 16 -radix unsigned} /tb_top_level/DUT/UFETCH_BLOCK/PC/Q(30) {-height 16 -radix unsigned} /tb_top_level/DUT/UFETCH_BLOCK/PC/Q(29) {-height 16 -radix unsigned} /tb_top_level/DUT/UFETCH_BLOCK/PC/Q(28) {-height 16 -radix unsigned} /tb_top_level/DUT/UFETCH_BLOCK/PC/Q(27) {-height 16 -radix unsigned} /tb_top_level/DUT/UFETCH_BLOCK/PC/Q(26) {-height 16 -radix unsigned} /tb_top_level/DUT/UFETCH_BLOCK/PC/Q(25) {-height 16 -radix unsigned} /tb_top_level/DUT/UFETCH_BLOCK/PC/Q(24) {-height 16 -radix unsigned} /tb_top_level/DUT/UFETCH_BLOCK/PC/Q(23) {-height 16 -radix unsigned} /tb_top_level/DUT/UFETCH_BLOCK/PC/Q(22) {-height 16 -radix unsigned} /tb_top_level/DUT/UFETCH_BLOCK/PC/Q(21) {-height 16 -radix unsigned} /tb_top_level/DUT/UFETCH_BLOCK/PC/Q(20) {-height 16 -radix unsigned} /tb_top_level/DUT/UFETCH_BLOCK/PC/Q(19) {-height 16 -radix unsigned} /tb_top_level/DUT/UFETCH_BLOCK/PC/Q(18) {-height 16 -radix unsigned} /tb_top_level/DUT/UFETCH_BLOCK/PC/Q(17) {-height 16 -radix unsigned} /tb_top_level/DUT/UFETCH_BLOCK/PC/Q(16) {-height 16 -radix unsigned} /tb_top_level/DUT/UFETCH_BLOCK/PC/Q(15) {-height 16 -radix unsigned} /tb_top_level/DUT/UFETCH_BLOCK/PC/Q(14) {-height 16 -radix unsigned} /tb_top_level/DUT/UFETCH_BLOCK/PC/Q(13) {-height 16 -radix unsigned} /tb_top_level/DUT/UFETCH_BLOCK/PC/Q(12) {-height 16 -radix unsigned} /tb_top_level/DUT/UFETCH_BLOCK/PC/Q(11) {-height 16 -radix unsigned} /tb_top_level/DUT/UFETCH_BLOCK/PC/Q(10) {-height 16 -radix unsigned} /tb_top_level/DUT/UFETCH_BLOCK/PC/Q(9) {-height 16 -radix unsigned} /tb_top_level/DUT/UFETCH_BLOCK/PC/Q(8) {-height 16 -radix unsigned} /tb_top_level/DUT/UFETCH_BLOCK/PC/Q(7) {-height 16 -radix unsigned} /tb_top_level/DUT/UFETCH_BLOCK/PC/Q(6) {-height 16 -radix unsigned} /tb_top_level/DUT/UFETCH_BLOCK/PC/Q(5) {-height 16 -radix unsigned} /tb_top_level/DUT/UFETCH_BLOCK/PC/Q(4) {-height 16 -radix unsigned} /tb_top_level/DUT/UFETCH_BLOCK/PC/Q(3) {-height 16 -radix unsigned} /tb_top_level/DUT/UFETCH_BLOCK/PC/Q(2) {-height 16 -radix unsigned} /tb_top_level/DUT/UFETCH_BLOCK/PC/Q(1) {-height 16 -radix unsigned} /tb_top_level/DUT/UFETCH_BLOCK/PC/Q(0) {-height 16 -radix unsigned}} /tb_top_level/DUT/UFETCH_BLOCK/PC/Q
add wave -noupdate -label PC+4 -radix unsigned /tb_top_level/DUT/UFEETCH_REGS/NPCF/Q
add wave -noupdate -label IR -radix hexadecimal /tb_top_level/DUT/UFEETCH_REGS/IR/Q
add wave -noupdate -label ALUOP /tb_top_level/DUT/UCU/aluOpcode_d
add wave -noupdate -label A -radix decimal /tb_top_level/DUT/UDECODE_REGS/A/Q
add wave -noupdate -label B -radix unsigned /tb_top_level/DUT/UDECODE_REGS/B/Q
add wave -noupdate -label IMM -radix unsigned /tb_top_level/DUT/UDECODE_REGS/IMM/Q
add wave -noupdate -label DEST -radix unsigned /tb_top_level/DUT/UEXECUTE_BLOCK/MUXDEST/OUT1
add wave -noupdate -label X -radix unsigned /tb_top_level/DUT/UEXECUTE_REGS/X/Q
add wave -noupdate -label S -radix unsigned /tb_top_level/DUT/UEXECUTE_REGS/S/Q
add wave -noupdate -label TAKEN /tb_top_level/DUT/UBTB/taken
add wave -noupdate -label W -radix unsigned /tb_top_level/DUT/UMEM_REGS/W/Q
add wave -noupdate -label D3 -radix unsigned /tb_top_level/DUT/UMEM_REGS/D3/Q
add wave -noupdate -divider -height 20 <NULL>
add wave -noupdate -label REGS -radix unsigned -childformat {{/tb_top_level/DUT/RF/REGISTERS(0) -radix unsigned} {/tb_top_level/DUT/RF/REGISTERS(1) -radix decimal} {/tb_top_level/DUT/RF/REGISTERS(2) -radix unsigned} {/tb_top_level/DUT/RF/REGISTERS(3) -radix unsigned} {/tb_top_level/DUT/RF/REGISTERS(4) -radix unsigned} {/tb_top_level/DUT/RF/REGISTERS(5) -radix unsigned} {/tb_top_level/DUT/RF/REGISTERS(6) -radix unsigned} {/tb_top_level/DUT/RF/REGISTERS(7) -radix unsigned} {/tb_top_level/DUT/RF/REGISTERS(8) -radix unsigned} {/tb_top_level/DUT/RF/REGISTERS(9) -radix unsigned} {/tb_top_level/DUT/RF/REGISTERS(10) -radix unsigned} {/tb_top_level/DUT/RF/REGISTERS(11) -radix unsigned} {/tb_top_level/DUT/RF/REGISTERS(12) -radix unsigned} {/tb_top_level/DUT/RF/REGISTERS(13) -radix unsigned} {/tb_top_level/DUT/RF/REGISTERS(14) -radix unsigned} {/tb_top_level/DUT/RF/REGISTERS(15) -radix unsigned} {/tb_top_level/DUT/RF/REGISTERS(16) -radix unsigned} {/tb_top_level/DUT/RF/REGISTERS(17) -radix unsigned} {/tb_top_level/DUT/RF/REGISTERS(18) -radix unsigned} {/tb_top_level/DUT/RF/REGISTERS(19) -radix unsigned} {/tb_top_level/DUT/RF/REGISTERS(20) -radix unsigned} {/tb_top_level/DUT/RF/REGISTERS(21) -radix unsigned} {/tb_top_level/DUT/RF/REGISTERS(22) -radix unsigned} {/tb_top_level/DUT/RF/REGISTERS(23) -radix unsigned} {/tb_top_level/DUT/RF/REGISTERS(24) -radix unsigned} {/tb_top_level/DUT/RF/REGISTERS(25) -radix unsigned} {/tb_top_level/DUT/RF/REGISTERS(26) -radix unsigned} {/tb_top_level/DUT/RF/REGISTERS(27) -radix unsigned} {/tb_top_level/DUT/RF/REGISTERS(28) -radix unsigned} {/tb_top_level/DUT/RF/REGISTERS(29) -radix unsigned} {/tb_top_level/DUT/RF/REGISTERS(30) -radix unsigned} {/tb_top_level/DUT/RF/REGISTERS(31) -radix unsigned}} -subitemconfig {/tb_top_level/DUT/RF/REGISTERS(0) {-height 16 -radix unsigned} /tb_top_level/DUT/RF/REGISTERS(1) {-height 16 -radix decimal} /tb_top_level/DUT/RF/REGISTERS(2) {-height 16 -radix unsigned} /tb_top_level/DUT/RF/REGISTERS(3) {-height 16 -radix unsigned} /tb_top_level/DUT/RF/REGISTERS(4) {-height 16 -radix unsigned} /tb_top_level/DUT/RF/REGISTERS(5) {-height 16 -radix unsigned} /tb_top_level/DUT/RF/REGISTERS(6) {-height 16 -radix unsigned} /tb_top_level/DUT/RF/REGISTERS(7) {-height 16 -radix unsigned} /tb_top_level/DUT/RF/REGISTERS(8) {-height 16 -radix unsigned} /tb_top_level/DUT/RF/REGISTERS(9) {-height 16 -radix unsigned} /tb_top_level/DUT/RF/REGISTERS(10) {-height 16 -radix unsigned} /tb_top_level/DUT/RF/REGISTERS(11) {-height 16 -radix unsigned} /tb_top_level/DUT/RF/REGISTERS(12) {-height 16 -radix unsigned} /tb_top_level/DUT/RF/REGISTERS(13) {-height 16 -radix unsigned} /tb_top_level/DUT/RF/REGISTERS(14) {-height 16 -radix unsigned} /tb_top_level/DUT/RF/REGISTERS(15) {-height 16 -radix unsigned} /tb_top_level/DUT/RF/REGISTERS(16) {-height 16 -radix unsigned} /tb_top_level/DUT/RF/REGISTERS(17) {-height 16 -radix unsigned} /tb_top_level/DUT/RF/REGISTERS(18) {-height 16 -radix unsigned} /tb_top_level/DUT/RF/REGISTERS(19) {-height 16 -radix unsigned} /tb_top_level/DUT/RF/REGISTERS(20) {-height 16 -radix unsigned} /tb_top_level/DUT/RF/REGISTERS(21) {-height 16 -radix unsigned} /tb_top_level/DUT/RF/REGISTERS(22) {-height 16 -radix unsigned} /tb_top_level/DUT/RF/REGISTERS(23) {-height 16 -radix unsigned} /tb_top_level/DUT/RF/REGISTERS(24) {-height 16 -radix unsigned} /tb_top_level/DUT/RF/REGISTERS(25) {-height 16 -radix unsigned} /tb_top_level/DUT/RF/REGISTERS(26) {-height 16 -radix unsigned} /tb_top_level/DUT/RF/REGISTERS(27) {-height 16 -radix unsigned} /tb_top_level/DUT/RF/REGISTERS(28) {-height 16 -radix unsigned} /tb_top_level/DUT/RF/REGISTERS(29) {-height 16 -radix unsigned} /tb_top_level/DUT/RF/REGISTERS(30) {-height 16 -radix unsigned} /tb_top_level/DUT/RF/REGISTERS(31) {-height 16 -radix unsigned}} /tb_top_level/DUT/RF/REGISTERS
add wave -noupdate -divider -height 20 <NULL>
add wave -noupdate -label DRAM -radix unsigned /tb_top_level/DUT/UDMEM/DRAM_mem
add wave -noupdate -divider -height 20 <NULL>
add wave -noupdate -label {SMUX PC} /tb_top_level/DUT/UFETCH_BLOCK/S_MUX_PC_BUS_i
add wave -noupdate -radix unsigned /tb_top_level/DUT/UFETCH_BLOCK/PC_BUS_no_BTB
add wave -noupdate -divider -height 20 <NULL>
add wave -noupdate -label TAKEN_O /tb_top_level/DUT/UBTB/taken_o
add wave -noupdate -label D2 -radix unsigned /tb_top_level/DUT/UEXECUTE_REGS/D2/Q
add wave -noupdate -label {LAST TAG} /tb_top_level/DUT/UBTB/last_TAG
add wave -noupdate -label {TAG i} /tb_top_level/DUT/UBTB/TAG_i
add wave -noupdate -label {LAST TAKEN} /tb_top_level/DUT/UBTB/last_taken
add wave -noupdate -label MISS /tb_top_level/DUT/UBTB/mispredict_o
add wave -noupdate -label VALID /tb_top_level/DUT/UBTB/valid
add wave -noupdate -label {WAS TAKEN} /tb_top_level/DUT/UBTB/was_taken_i
add wave -noupdate -label {WAS BRANCH} /tb_top_level/DUT/UBTB/was_branch_i
add wave -noupdate -label {TARGET PC IN} -radix unsigned /tb_top_level/DUT/UBTB/target_PC_i
add wave -noupdate -label {PRED PC OUT} -radix unsigned -childformat {{/tb_top_level/DUT/UBTB/predicted_next_PC_o(31) -radix unsigned} {/tb_top_level/DUT/UBTB/predicted_next_PC_o(30) -radix unsigned} {/tb_top_level/DUT/UBTB/predicted_next_PC_o(29) -radix unsigned} {/tb_top_level/DUT/UBTB/predicted_next_PC_o(28) -radix unsigned} {/tb_top_level/DUT/UBTB/predicted_next_PC_o(27) -radix unsigned} {/tb_top_level/DUT/UBTB/predicted_next_PC_o(26) -radix unsigned} {/tb_top_level/DUT/UBTB/predicted_next_PC_o(25) -radix unsigned} {/tb_top_level/DUT/UBTB/predicted_next_PC_o(24) -radix unsigned} {/tb_top_level/DUT/UBTB/predicted_next_PC_o(23) -radix unsigned} {/tb_top_level/DUT/UBTB/predicted_next_PC_o(22) -radix unsigned} {/tb_top_level/DUT/UBTB/predicted_next_PC_o(21) -radix unsigned} {/tb_top_level/DUT/UBTB/predicted_next_PC_o(20) -radix unsigned} {/tb_top_level/DUT/UBTB/predicted_next_PC_o(19) -radix unsigned} {/tb_top_level/DUT/UBTB/predicted_next_PC_o(18) -radix unsigned} {/tb_top_level/DUT/UBTB/predicted_next_PC_o(17) -radix unsigned} {/tb_top_level/DUT/UBTB/predicted_next_PC_o(16) -radix unsigned} {/tb_top_level/DUT/UBTB/predicted_next_PC_o(15) -radix unsigned} {/tb_top_level/DUT/UBTB/predicted_next_PC_o(14) -radix unsigned} {/tb_top_level/DUT/UBTB/predicted_next_PC_o(13) -radix unsigned} {/tb_top_level/DUT/UBTB/predicted_next_PC_o(12) -radix unsigned} {/tb_top_level/DUT/UBTB/predicted_next_PC_o(11) -radix unsigned} {/tb_top_level/DUT/UBTB/predicted_next_PC_o(10) -radix unsigned} {/tb_top_level/DUT/UBTB/predicted_next_PC_o(9) -radix unsigned} {/tb_top_level/DUT/UBTB/predicted_next_PC_o(8) -radix unsigned} {/tb_top_level/DUT/UBTB/predicted_next_PC_o(7) -radix unsigned} {/tb_top_level/DUT/UBTB/predicted_next_PC_o(6) -radix unsigned} {/tb_top_level/DUT/UBTB/predicted_next_PC_o(5) -radix unsigned} {/tb_top_level/DUT/UBTB/predicted_next_PC_o(4) -radix unsigned} {/tb_top_level/DUT/UBTB/predicted_next_PC_o(3) -radix unsigned} {/tb_top_level/DUT/UBTB/predicted_next_PC_o(2) -radix unsigned} {/tb_top_level/DUT/UBTB/predicted_next_PC_o(1) -radix unsigned} {/tb_top_level/DUT/UBTB/predicted_next_PC_o(0) -radix unsigned}} -subitemconfig {/tb_top_level/DUT/UBTB/predicted_next_PC_o(31) {-height 16 -radix unsigned} /tb_top_level/DUT/UBTB/predicted_next_PC_o(30) {-height 16 -radix unsigned} /tb_top_level/DUT/UBTB/predicted_next_PC_o(29) {-height 16 -radix unsigned} /tb_top_level/DUT/UBTB/predicted_next_PC_o(28) {-height 16 -radix unsigned} /tb_top_level/DUT/UBTB/predicted_next_PC_o(27) {-height 16 -radix unsigned} /tb_top_level/DUT/UBTB/predicted_next_PC_o(26) {-height 16 -radix unsigned} /tb_top_level/DUT/UBTB/predicted_next_PC_o(25) {-height 16 -radix unsigned} /tb_top_level/DUT/UBTB/predicted_next_PC_o(24) {-height 16 -radix unsigned} /tb_top_level/DUT/UBTB/predicted_next_PC_o(23) {-height 16 -radix unsigned} /tb_top_level/DUT/UBTB/predicted_next_PC_o(22) {-height 16 -radix unsigned} /tb_top_level/DUT/UBTB/predicted_next_PC_o(21) {-height 16 -radix unsigned} /tb_top_level/DUT/UBTB/predicted_next_PC_o(20) {-height 16 -radix unsigned} /tb_top_level/DUT/UBTB/predicted_next_PC_o(19) {-height 16 -radix unsigned} /tb_top_level/DUT/UBTB/predicted_next_PC_o(18) {-height 16 -radix unsigned} /tb_top_level/DUT/UBTB/predicted_next_PC_o(17) {-height 16 -radix unsigned} /tb_top_level/DUT/UBTB/predicted_next_PC_o(16) {-height 16 -radix unsigned} /tb_top_level/DUT/UBTB/predicted_next_PC_o(15) {-height 16 -radix unsigned} /tb_top_level/DUT/UBTB/predicted_next_PC_o(14) {-height 16 -radix unsigned} /tb_top_level/DUT/UBTB/predicted_next_PC_o(13) {-height 16 -radix unsigned} /tb_top_level/DUT/UBTB/predicted_next_PC_o(12) {-height 16 -radix unsigned} /tb_top_level/DUT/UBTB/predicted_next_PC_o(11) {-height 16 -radix unsigned} /tb_top_level/DUT/UBTB/predicted_next_PC_o(10) {-height 16 -radix unsigned} /tb_top_level/DUT/UBTB/predicted_next_PC_o(9) {-height 16 -radix unsigned} /tb_top_level/DUT/UBTB/predicted_next_PC_o(8) {-height 16 -radix unsigned} /tb_top_level/DUT/UBTB/predicted_next_PC_o(7) {-height 16 -radix unsigned} /tb_top_level/DUT/UBTB/predicted_next_PC_o(6) {-height 16 -radix unsigned} /tb_top_level/DUT/UBTB/predicted_next_PC_o(5) {-height 16 -radix unsigned} /tb_top_level/DUT/UBTB/predicted_next_PC_o(4) {-height 16 -radix unsigned} /tb_top_level/DUT/UBTB/predicted_next_PC_o(3) {-height 16 -radix unsigned} /tb_top_level/DUT/UBTB/predicted_next_PC_o(2) {-height 16 -radix unsigned} /tb_top_level/DUT/UBTB/predicted_next_PC_o(1) {-height 16 -radix unsigned} /tb_top_level/DUT/UBTB/predicted_next_PC_o(0) {-height 16 -radix unsigned}} /tb_top_level/DUT/UBTB/predicted_next_PC_o
add wave -noupdate -label {PREDICT PC} -radix hexadecimal -childformat {{/tb_top_level/DUT/UBTB/predict_PC(0) -radix hexadecimal} {/tb_top_level/DUT/UBTB/predict_PC(1) -radix hexadecimal} {/tb_top_level/DUT/UBTB/predict_PC(2) -radix hexadecimal} {/tb_top_level/DUT/UBTB/predict_PC(3) -radix hexadecimal}} -expand -subitemconfig {/tb_top_level/DUT/UBTB/predict_PC(0) {-height 16 -radix hexadecimal} /tb_top_level/DUT/UBTB/predict_PC(1) {-height 16 -radix hexadecimal} /tb_top_level/DUT/UBTB/predict_PC(2) {-height 16 -radix hexadecimal} /tb_top_level/DUT/UBTB/predict_PC(3) {-height 16 -radix hexadecimal}} /tb_top_level/DUT/UBTB/predict_PC
add wave -noupdate -label {WRONG B PRED} /tb_top_level/DUT/UBTB/wrong_back_pred_o
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {5049 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
configure wave -valuecolwidth 277
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ps
update
WaveRestoreZoom {0 ps} {10098 ps}