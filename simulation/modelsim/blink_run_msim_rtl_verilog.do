transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlib soc_system
vmap soc_system soc_system
vlog -vlog01compat -work soc_system +incdir+/home/khyam/Downloads/qsys/jtag_master/soc_system/synthesis {/home/khyam/Downloads/qsys/jtag_master/soc_system/synthesis/soc_system.v}
vlog -vlog01compat -work soc_system +incdir+/home/khyam/Downloads/qsys/jtag_master/soc_system/synthesis/submodules {/home/khyam/Downloads/qsys/jtag_master/soc_system/synthesis/submodules/altera_reset_controller.v}
vlog -vlog01compat -work soc_system +incdir+/home/khyam/Downloads/qsys/jtag_master/soc_system/synthesis/submodules {/home/khyam/Downloads/qsys/jtag_master/soc_system/synthesis/submodules/altera_reset_synchronizer.v}
vlog -vlog01compat -work soc_system +incdir+/home/khyam/Downloads/qsys/jtag_master/soc_system/synthesis/submodules {/home/khyam/Downloads/qsys/jtag_master/soc_system/synthesis/submodules/soc_system_mm_interconnect_0.v}
vlog -vlog01compat -work soc_system +incdir+/home/khyam/Downloads/qsys/jtag_master/soc_system/synthesis/submodules {/home/khyam/Downloads/qsys/jtag_master/soc_system/synthesis/submodules/soc_system_mm_interconnect_0_avalon_st_adapter.v}
vlog -vlog01compat -work soc_system +incdir+/home/khyam/Downloads/qsys/jtag_master/soc_system/synthesis/submodules {/home/khyam/Downloads/qsys/jtag_master/soc_system/synthesis/submodules/soc_system_sysid_qsys_0.v}
vlog -vlog01compat -work soc_system +incdir+/home/khyam/Downloads/qsys/jtag_master/soc_system/synthesis/submodules {/home/khyam/Downloads/qsys/jtag_master/soc_system/synthesis/submodules/soc_system_switch_pio.v}
vlog -vlog01compat -work soc_system +incdir+/home/khyam/Downloads/qsys/jtag_master/soc_system/synthesis/submodules {/home/khyam/Downloads/qsys/jtag_master/soc_system/synthesis/submodules/soc_system_ocram_64K.v}
vlog -vlog01compat -work soc_system +incdir+/home/khyam/Downloads/qsys/jtag_master/soc_system/synthesis/submodules {/home/khyam/Downloads/qsys/jtag_master/soc_system/synthesis/submodules/soc_system_ocram_16b.v}
vlog -vlog01compat -work soc_system +incdir+/home/khyam/Downloads/qsys/jtag_master/soc_system/synthesis/submodules {/home/khyam/Downloads/qsys/jtag_master/soc_system/synthesis/submodules/soc_system_nios2_gen2_0.v}
vlog -vlog01compat -work soc_system +incdir+/home/khyam/Downloads/qsys/jtag_master/soc_system/synthesis/submodules {/home/khyam/Downloads/qsys/jtag_master/soc_system/synthesis/submodules/soc_system_nios2_gen2_0_cpu_debug_slave_sysclk.v}
vlog -vlog01compat -work soc_system +incdir+/home/khyam/Downloads/qsys/jtag_master/soc_system/synthesis/submodules {/home/khyam/Downloads/qsys/jtag_master/soc_system/synthesis/submodules/soc_system_nios2_gen2_0_cpu.v}
vlog -vlog01compat -work soc_system +incdir+/home/khyam/Downloads/qsys/jtag_master/soc_system/synthesis/submodules {/home/khyam/Downloads/qsys/jtag_master/soc_system/synthesis/submodules/soc_system_nios2_gen2_0_cpu_debug_slave_wrapper.v}
vlog -vlog01compat -work soc_system +incdir+/home/khyam/Downloads/qsys/jtag_master/soc_system/synthesis/submodules {/home/khyam/Downloads/qsys/jtag_master/soc_system/synthesis/submodules/soc_system_nios2_gen2_0_cpu_test_bench.v}
vlog -vlog01compat -work soc_system +incdir+/home/khyam/Downloads/qsys/jtag_master/soc_system/synthesis/submodules {/home/khyam/Downloads/qsys/jtag_master/soc_system/synthesis/submodules/soc_system_nios2_gen2_0_cpu_debug_slave_tck.v}
vlog -vlog01compat -work soc_system +incdir+/home/khyam/Downloads/qsys/jtag_master/soc_system/synthesis/submodules {/home/khyam/Downloads/qsys/jtag_master/soc_system/synthesis/submodules/soc_system_master_0.v}
vlog -vlog01compat -work soc_system +incdir+/home/khyam/Downloads/qsys/jtag_master/soc_system/synthesis/submodules {/home/khyam/Downloads/qsys/jtag_master/soc_system/synthesis/submodules/altera_avalon_packets_to_master.v}
vlog -vlog01compat -work soc_system +incdir+/home/khyam/Downloads/qsys/jtag_master/soc_system/synthesis/submodules {/home/khyam/Downloads/qsys/jtag_master/soc_system/synthesis/submodules/altera_avalon_st_packets_to_bytes.v}
vlog -vlog01compat -work soc_system +incdir+/home/khyam/Downloads/qsys/jtag_master/soc_system/synthesis/submodules {/home/khyam/Downloads/qsys/jtag_master/soc_system/synthesis/submodules/altera_avalon_st_bytes_to_packets.v}
vlog -vlog01compat -work soc_system +incdir+/home/khyam/Downloads/qsys/jtag_master/soc_system/synthesis/submodules {/home/khyam/Downloads/qsys/jtag_master/soc_system/synthesis/submodules/altera_avalon_st_jtag_interface.v}
vlog -vlog01compat -work soc_system +incdir+/home/khyam/Downloads/qsys/jtag_master/soc_system/synthesis/submodules {/home/khyam/Downloads/qsys/jtag_master/soc_system/synthesis/submodules/altera_jtag_dc_streaming.v}
vlog -vlog01compat -work soc_system +incdir+/home/khyam/Downloads/qsys/jtag_master/soc_system/synthesis/submodules {/home/khyam/Downloads/qsys/jtag_master/soc_system/synthesis/submodules/altera_jtag_sld_node.v}
vlog -vlog01compat -work soc_system +incdir+/home/khyam/Downloads/qsys/jtag_master/soc_system/synthesis/submodules {/home/khyam/Downloads/qsys/jtag_master/soc_system/synthesis/submodules/altera_jtag_streaming.v}
vlog -vlog01compat -work soc_system +incdir+/home/khyam/Downloads/qsys/jtag_master/soc_system/synthesis/submodules {/home/khyam/Downloads/qsys/jtag_master/soc_system/synthesis/submodules/altera_avalon_st_clock_crosser.v}
vlog -vlog01compat -work soc_system +incdir+/home/khyam/Downloads/qsys/jtag_master/soc_system/synthesis/submodules {/home/khyam/Downloads/qsys/jtag_master/soc_system/synthesis/submodules/altera_std_synchronizer_nocut.v}
vlog -vlog01compat -work soc_system +incdir+/home/khyam/Downloads/qsys/jtag_master/soc_system/synthesis/submodules {/home/khyam/Downloads/qsys/jtag_master/soc_system/synthesis/submodules/altera_avalon_st_idle_remover.v}
vlog -vlog01compat -work soc_system +incdir+/home/khyam/Downloads/qsys/jtag_master/soc_system/synthesis/submodules {/home/khyam/Downloads/qsys/jtag_master/soc_system/synthesis/submodules/altera_avalon_st_idle_inserter.v}
vlog -vlog01compat -work soc_system +incdir+/home/khyam/Downloads/qsys/jtag_master/soc_system/synthesis/submodules {/home/khyam/Downloads/qsys/jtag_master/soc_system/synthesis/submodules/soc_system_led_pio.v}
vlog -vlog01compat -work soc_system +incdir+/home/khyam/Downloads/qsys/jtag_master/soc_system/synthesis/submodules {/home/khyam/Downloads/qsys/jtag_master/soc_system/synthesis/submodules/soc_system_jtag_uart_0.v}
vlog -vlog01compat -work soc_system +incdir+/home/khyam/Downloads/qsys/jtag_master/soc_system/synthesis/submodules {/home/khyam/Downloads/qsys/jtag_master/soc_system/synthesis/submodules/soc_system_button_pio.v}
vlog -vlog01compat -work soc_system +incdir+/home/khyam/Downloads/qsys/jtag_master/soc_system/synthesis/submodules {/home/khyam/Downloads/qsys/jtag_master/soc_system/synthesis/submodules/VexRiscvAxi4.v}
vlog -vlog01compat -work work +incdir+/home/khyam/Downloads/qsys/jtag_master {/home/khyam/Downloads/qsys/jtag_master/blink.v}
vlog -sv -work soc_system +incdir+/home/khyam/Downloads/qsys/jtag_master/soc_system/synthesis/submodules {/home/khyam/Downloads/qsys/jtag_master/soc_system/synthesis/submodules/soc_system_irq_mapper_002.sv}
vlog -sv -work soc_system +incdir+/home/khyam/Downloads/qsys/jtag_master/soc_system/synthesis/submodules {/home/khyam/Downloads/qsys/jtag_master/soc_system/synthesis/submodules/soc_system_irq_mapper.sv}
vlog -sv -work soc_system +incdir+/home/khyam/Downloads/qsys/jtag_master/soc_system/synthesis/submodules {/home/khyam/Downloads/qsys/jtag_master/soc_system/synthesis/submodules/soc_system_mm_interconnect_0_avalon_st_adapter_error_adapter_0.sv}
vlog -sv -work soc_system +incdir+/home/khyam/Downloads/qsys/jtag_master/soc_system/synthesis/submodules {/home/khyam/Downloads/qsys/jtag_master/soc_system/synthesis/submodules/soc_system_mm_interconnect_0_rsp_mux_006.sv}
vlog -sv -work soc_system +incdir+/home/khyam/Downloads/qsys/jtag_master/soc_system/synthesis/submodules {/home/khyam/Downloads/qsys/jtag_master/soc_system/synthesis/submodules/altera_merlin_arbitrator.sv}
vlog -sv -work soc_system +incdir+/home/khyam/Downloads/qsys/jtag_master/soc_system/synthesis/submodules {/home/khyam/Downloads/qsys/jtag_master/soc_system/synthesis/submodules/soc_system_mm_interconnect_0_rsp_mux_004.sv}
vlog -sv -work soc_system +incdir+/home/khyam/Downloads/qsys/jtag_master/soc_system/synthesis/submodules {/home/khyam/Downloads/qsys/jtag_master/soc_system/synthesis/submodules/soc_system_mm_interconnect_0_rsp_mux_002.sv}
vlog -sv -work soc_system +incdir+/home/khyam/Downloads/qsys/jtag_master/soc_system/synthesis/submodules {/home/khyam/Downloads/qsys/jtag_master/soc_system/synthesis/submodules/soc_system_mm_interconnect_0_rsp_mux.sv}
vlog -sv -work soc_system +incdir+/home/khyam/Downloads/qsys/jtag_master/soc_system/synthesis/submodules {/home/khyam/Downloads/qsys/jtag_master/soc_system/synthesis/submodules/soc_system_mm_interconnect_0_rsp_demux_002.sv}
vlog -sv -work soc_system +incdir+/home/khyam/Downloads/qsys/jtag_master/soc_system/synthesis/submodules {/home/khyam/Downloads/qsys/jtag_master/soc_system/synthesis/submodules/soc_system_mm_interconnect_0_rsp_demux.sv}
vlog -sv -work soc_system +incdir+/home/khyam/Downloads/qsys/jtag_master/soc_system/synthesis/submodules {/home/khyam/Downloads/qsys/jtag_master/soc_system/synthesis/submodules/soc_system_mm_interconnect_0_cmd_mux_007.sv}
vlog -sv -work soc_system +incdir+/home/khyam/Downloads/qsys/jtag_master/soc_system/synthesis/submodules {/home/khyam/Downloads/qsys/jtag_master/soc_system/synthesis/submodules/soc_system_mm_interconnect_0_cmd_mux_003.sv}
vlog -sv -work soc_system +incdir+/home/khyam/Downloads/qsys/jtag_master/soc_system/synthesis/submodules {/home/khyam/Downloads/qsys/jtag_master/soc_system/synthesis/submodules/soc_system_mm_interconnect_0_cmd_mux_002.sv}
vlog -sv -work soc_system +incdir+/home/khyam/Downloads/qsys/jtag_master/soc_system/synthesis/submodules {/home/khyam/Downloads/qsys/jtag_master/soc_system/synthesis/submodules/soc_system_mm_interconnect_0_cmd_mux.sv}
vlog -sv -work soc_system +incdir+/home/khyam/Downloads/qsys/jtag_master/soc_system/synthesis/submodules {/home/khyam/Downloads/qsys/jtag_master/soc_system/synthesis/submodules/soc_system_mm_interconnect_0_cmd_demux_006.sv}
vlog -sv -work soc_system +incdir+/home/khyam/Downloads/qsys/jtag_master/soc_system/synthesis/submodules {/home/khyam/Downloads/qsys/jtag_master/soc_system/synthesis/submodules/soc_system_mm_interconnect_0_cmd_demux_004.sv}
vlog -sv -work soc_system +incdir+/home/khyam/Downloads/qsys/jtag_master/soc_system/synthesis/submodules {/home/khyam/Downloads/qsys/jtag_master/soc_system/synthesis/submodules/soc_system_mm_interconnect_0_cmd_demux_003.sv}
vlog -sv -work soc_system +incdir+/home/khyam/Downloads/qsys/jtag_master/soc_system/synthesis/submodules {/home/khyam/Downloads/qsys/jtag_master/soc_system/synthesis/submodules/soc_system_mm_interconnect_0_cmd_demux_002.sv}
vlog -sv -work soc_system +incdir+/home/khyam/Downloads/qsys/jtag_master/soc_system/synthesis/submodules {/home/khyam/Downloads/qsys/jtag_master/soc_system/synthesis/submodules/soc_system_mm_interconnect_0_cmd_demux.sv}
vlog -sv -work soc_system +incdir+/home/khyam/Downloads/qsys/jtag_master/soc_system/synthesis/submodules {/home/khyam/Downloads/qsys/jtag_master/soc_system/synthesis/submodules/altera_merlin_burst_adapter.sv}
vlog -sv -work soc_system +incdir+/home/khyam/Downloads/qsys/jtag_master/soc_system/synthesis/submodules {/home/khyam/Downloads/qsys/jtag_master/soc_system/synthesis/submodules/altera_merlin_burst_adapter_13_1.sv}
vlog -sv -work soc_system +incdir+/home/khyam/Downloads/qsys/jtag_master/soc_system/synthesis/submodules {/home/khyam/Downloads/qsys/jtag_master/soc_system/synthesis/submodules/altera_merlin_address_alignment.sv}
vlog -vlog01compat -work soc_system +incdir+/home/khyam/Downloads/qsys/jtag_master/soc_system/synthesis/submodules {/home/khyam/Downloads/qsys/jtag_master/soc_system/synthesis/submodules/altera_avalon_st_pipeline_base.v}
vlog -sv -work soc_system +incdir+/home/khyam/Downloads/qsys/jtag_master/soc_system/synthesis/submodules {/home/khyam/Downloads/qsys/jtag_master/soc_system/synthesis/submodules/altera_merlin_traffic_limiter.sv}
vlog -vlog01compat -work soc_system +incdir+/home/khyam/Downloads/qsys/jtag_master/soc_system/synthesis/submodules {/home/khyam/Downloads/qsys/jtag_master/soc_system/synthesis/submodules/altera_avalon_sc_fifo.v}
vlog -sv -work soc_system +incdir+/home/khyam/Downloads/qsys/jtag_master/soc_system/synthesis/submodules {/home/khyam/Downloads/qsys/jtag_master/soc_system/synthesis/submodules/soc_system_mm_interconnect_0_router_014.sv}
vlog -sv -work soc_system +incdir+/home/khyam/Downloads/qsys/jtag_master/soc_system/synthesis/submodules {/home/khyam/Downloads/qsys/jtag_master/soc_system/synthesis/submodules/soc_system_mm_interconnect_0_router_010.sv}
vlog -sv -work soc_system +incdir+/home/khyam/Downloads/qsys/jtag_master/soc_system/synthesis/submodules {/home/khyam/Downloads/qsys/jtag_master/soc_system/synthesis/submodules/soc_system_mm_interconnect_0_router_009.sv}
vlog -sv -work soc_system +incdir+/home/khyam/Downloads/qsys/jtag_master/soc_system/synthesis/submodules {/home/khyam/Downloads/qsys/jtag_master/soc_system/synthesis/submodules/soc_system_mm_interconnect_0_router_007.sv}
vlog -sv -work soc_system +incdir+/home/khyam/Downloads/qsys/jtag_master/soc_system/synthesis/submodules {/home/khyam/Downloads/qsys/jtag_master/soc_system/synthesis/submodules/soc_system_mm_interconnect_0_router_006.sv}
vlog -sv -work soc_system +incdir+/home/khyam/Downloads/qsys/jtag_master/soc_system/synthesis/submodules {/home/khyam/Downloads/qsys/jtag_master/soc_system/synthesis/submodules/soc_system_mm_interconnect_0_router_004.sv}
vlog -sv -work soc_system +incdir+/home/khyam/Downloads/qsys/jtag_master/soc_system/synthesis/submodules {/home/khyam/Downloads/qsys/jtag_master/soc_system/synthesis/submodules/soc_system_mm_interconnect_0_router_002.sv}
vlog -sv -work soc_system +incdir+/home/khyam/Downloads/qsys/jtag_master/soc_system/synthesis/submodules {/home/khyam/Downloads/qsys/jtag_master/soc_system/synthesis/submodules/soc_system_mm_interconnect_0_router.sv}
vlog -sv -work soc_system +incdir+/home/khyam/Downloads/qsys/jtag_master/soc_system/synthesis/submodules {/home/khyam/Downloads/qsys/jtag_master/soc_system/synthesis/submodules/altera_merlin_slave_agent.sv}
vlog -sv -work soc_system +incdir+/home/khyam/Downloads/qsys/jtag_master/soc_system/synthesis/submodules {/home/khyam/Downloads/qsys/jtag_master/soc_system/synthesis/submodules/altera_merlin_burst_uncompressor.sv}
vlog -sv -work soc_system +incdir+/home/khyam/Downloads/qsys/jtag_master/soc_system/synthesis/submodules {/home/khyam/Downloads/qsys/jtag_master/soc_system/synthesis/submodules/altera_merlin_master_agent.sv}
vlog -sv -work soc_system +incdir+/home/khyam/Downloads/qsys/jtag_master/soc_system/synthesis/submodules {/home/khyam/Downloads/qsys/jtag_master/soc_system/synthesis/submodules/altera_merlin_axi_master_ni.sv}
vlog -sv -work soc_system +incdir+/home/khyam/Downloads/qsys/jtag_master/soc_system/synthesis/submodules {/home/khyam/Downloads/qsys/jtag_master/soc_system/synthesis/submodules/altera_merlin_slave_translator.sv}
vlog -sv -work soc_system +incdir+/home/khyam/Downloads/qsys/jtag_master/soc_system/synthesis/submodules {/home/khyam/Downloads/qsys/jtag_master/soc_system/synthesis/submodules/altera_merlin_master_translator.sv}
vlog -sv -work soc_system +incdir+/home/khyam/Downloads/qsys/jtag_master/soc_system/synthesis/submodules {/home/khyam/Downloads/qsys/jtag_master/soc_system/synthesis/submodules/altera_merlin_axi_translator.sv}
vlog -sv -work soc_system +incdir+/home/khyam/Downloads/qsys/jtag_master/soc_system/synthesis/submodules {/home/khyam/Downloads/qsys/jtag_master/soc_system/synthesis/submodules/soc_system_master_0_p2b_adapter.sv}
vlog -sv -work soc_system +incdir+/home/khyam/Downloads/qsys/jtag_master/soc_system/synthesis/submodules {/home/khyam/Downloads/qsys/jtag_master/soc_system/synthesis/submodules/soc_system_master_0_b2p_adapter.sv}
vlog -sv -work soc_system +incdir+/home/khyam/Downloads/qsys/jtag_master/soc_system/synthesis/submodules {/home/khyam/Downloads/qsys/jtag_master/soc_system/synthesis/submodules/soc_system_master_0_timing_adt.sv}

