get_service_paths device
set d_path [lindex [get_service_paths device] 0 ]
device_download_sof $d_path output_files/blink.sof
set jd_path [lindex [get_service_paths jtag_debug] 0]
jtag_debug_loop $jd_path [list 1 2 4 8 15 16]
jtag_debug_sense_clock $jd_path
set m_path [lindex [get_service_paths master] 0 ]
set c_path [claim_service master $m_path ""]
#cd /home/khyam/Riscv/array/address1/
#cd /home/khyam/Riscv/progam_even_odd/
#cd /home/khyam/Riscv/array/
cd /home/khyam/Riscv/branch/
#cd /home/khyam/Riscv/branch/bne
#source arr.tcl
source beq.tcl
cd /home/khyam/Downloads/qsys/jtag_master/
