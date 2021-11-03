// soc_system.v

// Generated using ACDS version 18.1 625

`timescale 1 ps / 1 ps
module soc_system (
		input  wire [3:0] button_pio_export, // button_pio.export
		input  wire       clk_clk,           //        clk.clk
		output wire [3:0] led_pio_export,    //    led_pio.export
		input  wire       reset_reset_n,     //      reset.reset_n
		input  wire [2:0] switch_pio_export  // switch_pio.export
	);

	wire  [31:0] nios2_gen2_0_data_master_readdata;                           // mm_interconnect_0:nios2_gen2_0_data_master_readdata -> nios2_gen2_0:d_readdata
	wire         nios2_gen2_0_data_master_waitrequest;                        // mm_interconnect_0:nios2_gen2_0_data_master_waitrequest -> nios2_gen2_0:d_waitrequest
	wire         nios2_gen2_0_data_master_debugaccess;                        // nios2_gen2_0:debug_mem_slave_debugaccess_to_roms -> mm_interconnect_0:nios2_gen2_0_data_master_debugaccess
	wire  [16:0] nios2_gen2_0_data_master_address;                            // nios2_gen2_0:d_address -> mm_interconnect_0:nios2_gen2_0_data_master_address
	wire   [3:0] nios2_gen2_0_data_master_byteenable;                         // nios2_gen2_0:d_byteenable -> mm_interconnect_0:nios2_gen2_0_data_master_byteenable
	wire         nios2_gen2_0_data_master_read;                               // nios2_gen2_0:d_read -> mm_interconnect_0:nios2_gen2_0_data_master_read
	wire         nios2_gen2_0_data_master_write;                              // nios2_gen2_0:d_write -> mm_interconnect_0:nios2_gen2_0_data_master_write
	wire  [31:0] nios2_gen2_0_data_master_writedata;                          // nios2_gen2_0:d_writedata -> mm_interconnect_0:nios2_gen2_0_data_master_writedata
	wire  [31:0] nios2_gen2_0_instruction_master_readdata;                    // mm_interconnect_0:nios2_gen2_0_instruction_master_readdata -> nios2_gen2_0:i_readdata
	wire         nios2_gen2_0_instruction_master_waitrequest;                 // mm_interconnect_0:nios2_gen2_0_instruction_master_waitrequest -> nios2_gen2_0:i_waitrequest
	wire  [16:0] nios2_gen2_0_instruction_master_address;                     // nios2_gen2_0:i_address -> mm_interconnect_0:nios2_gen2_0_instruction_master_address
	wire         nios2_gen2_0_instruction_master_read;                        // nios2_gen2_0:i_read -> mm_interconnect_0:nios2_gen2_0_instruction_master_read
	wire  [31:0] master_0_master_readdata;                                    // mm_interconnect_0:master_0_master_readdata -> master_0:master_readdata
	wire         master_0_master_waitrequest;                                 // mm_interconnect_0:master_0_master_waitrequest -> master_0:master_waitrequest
	wire  [31:0] master_0_master_address;                                     // master_0:master_address -> mm_interconnect_0:master_0_master_address
	wire         master_0_master_read;                                        // master_0:master_read -> mm_interconnect_0:master_0_master_read
	wire   [3:0] master_0_master_byteenable;                                  // master_0:master_byteenable -> mm_interconnect_0:master_0_master_byteenable
	wire         master_0_master_readdatavalid;                               // mm_interconnect_0:master_0_master_readdatavalid -> master_0:master_readdatavalid
	wire         master_0_master_write;                                       // master_0:master_write -> mm_interconnect_0:master_0_master_write
	wire  [31:0] master_0_master_writedata;                                   // master_0:master_writedata -> mm_interconnect_0:master_0_master_writedata
	wire         mm_interconnect_0_jtag_uart_0_avalon_jtag_slave_chipselect;  // mm_interconnect_0:jtag_uart_0_avalon_jtag_slave_chipselect -> jtag_uart_0:av_chipselect
	wire  [31:0] mm_interconnect_0_jtag_uart_0_avalon_jtag_slave_readdata;    // jtag_uart_0:av_readdata -> mm_interconnect_0:jtag_uart_0_avalon_jtag_slave_readdata
	wire         mm_interconnect_0_jtag_uart_0_avalon_jtag_slave_waitrequest; // jtag_uart_0:av_waitrequest -> mm_interconnect_0:jtag_uart_0_avalon_jtag_slave_waitrequest
	wire   [0:0] mm_interconnect_0_jtag_uart_0_avalon_jtag_slave_address;     // mm_interconnect_0:jtag_uart_0_avalon_jtag_slave_address -> jtag_uart_0:av_address
	wire         mm_interconnect_0_jtag_uart_0_avalon_jtag_slave_read;        // mm_interconnect_0:jtag_uart_0_avalon_jtag_slave_read -> jtag_uart_0:av_read_n
	wire         mm_interconnect_0_jtag_uart_0_avalon_jtag_slave_write;       // mm_interconnect_0:jtag_uart_0_avalon_jtag_slave_write -> jtag_uart_0:av_write_n
	wire  [31:0] mm_interconnect_0_jtag_uart_0_avalon_jtag_slave_writedata;   // mm_interconnect_0:jtag_uart_0_avalon_jtag_slave_writedata -> jtag_uart_0:av_writedata
	wire  [31:0] mm_interconnect_0_sysid_qsys_0_control_slave_readdata;       // sysid_qsys_0:readdata -> mm_interconnect_0:sysid_qsys_0_control_slave_readdata
	wire   [0:0] mm_interconnect_0_sysid_qsys_0_control_slave_address;        // mm_interconnect_0:sysid_qsys_0_control_slave_address -> sysid_qsys_0:address
	wire  [31:0] mm_interconnect_0_switch_pio_s1_readdata;                    // switch_pio:readdata -> mm_interconnect_0:switch_pio_s1_readdata
	wire   [1:0] mm_interconnect_0_switch_pio_s1_address;                     // mm_interconnect_0:switch_pio_s1_address -> switch_pio:address
	wire  [31:0] mm_interconnect_0_button_pio_s1_readdata;                    // button_pio:readdata -> mm_interconnect_0:button_pio_s1_readdata
	wire   [1:0] mm_interconnect_0_button_pio_s1_address;                     // mm_interconnect_0:button_pio_s1_address -> button_pio:address
	wire         mm_interconnect_0_led_pio_s1_chipselect;                     // mm_interconnect_0:led_pio_s1_chipselect -> led_pio:chipselect
	wire  [31:0] mm_interconnect_0_led_pio_s1_readdata;                       // led_pio:readdata -> mm_interconnect_0:led_pio_s1_readdata
	wire   [1:0] mm_interconnect_0_led_pio_s1_address;                        // mm_interconnect_0:led_pio_s1_address -> led_pio:address
	wire         mm_interconnect_0_led_pio_s1_write;                          // mm_interconnect_0:led_pio_s1_write -> led_pio:write_n
	wire  [31:0] mm_interconnect_0_led_pio_s1_writedata;                      // mm_interconnect_0:led_pio_s1_writedata -> led_pio:writedata
	wire         mm_interconnect_0_ocram_16b_s1_chipselect;                   // mm_interconnect_0:ocram_16b_s1_chipselect -> ocram_16b:chipselect
	wire  [31:0] mm_interconnect_0_ocram_16b_s1_readdata;                     // ocram_16b:readdata -> mm_interconnect_0:ocram_16b_s1_readdata
	wire  [11:0] mm_interconnect_0_ocram_16b_s1_address;                      // mm_interconnect_0:ocram_16b_s1_address -> ocram_16b:address
	wire   [3:0] mm_interconnect_0_ocram_16b_s1_byteenable;                   // mm_interconnect_0:ocram_16b_s1_byteenable -> ocram_16b:byteenable
	wire         mm_interconnect_0_ocram_16b_s1_write;                        // mm_interconnect_0:ocram_16b_s1_write -> ocram_16b:write
	wire  [31:0] mm_interconnect_0_ocram_16b_s1_writedata;                    // mm_interconnect_0:ocram_16b_s1_writedata -> ocram_16b:writedata
	wire         mm_interconnect_0_ocram_16b_s1_clken;                        // mm_interconnect_0:ocram_16b_s1_clken -> ocram_16b:clken
	wire         mm_interconnect_0_ocram_64k_s1_chipselect;                   // mm_interconnect_0:ocram_64K_s1_chipselect -> ocram_64K:chipselect
	wire  [31:0] mm_interconnect_0_ocram_64k_s1_readdata;                     // ocram_64K:readdata -> mm_interconnect_0:ocram_64K_s1_readdata
	wire  [13:0] mm_interconnect_0_ocram_64k_s1_address;                      // mm_interconnect_0:ocram_64K_s1_address -> ocram_64K:address
	wire   [3:0] mm_interconnect_0_ocram_64k_s1_byteenable;                   // mm_interconnect_0:ocram_64K_s1_byteenable -> ocram_64K:byteenable
	wire         mm_interconnect_0_ocram_64k_s1_write;                        // mm_interconnect_0:ocram_64K_s1_write -> ocram_64K:write
	wire  [31:0] mm_interconnect_0_ocram_64k_s1_writedata;                    // mm_interconnect_0:ocram_64K_s1_writedata -> ocram_64K:writedata
	wire         mm_interconnect_0_ocram_64k_s1_clken;                        // mm_interconnect_0:ocram_64K_s1_clken -> ocram_64K:clken
	wire  [31:0] mm_interconnect_0_nios2_gen2_0_debug_mem_slave_readdata;     // nios2_gen2_0:debug_mem_slave_readdata -> mm_interconnect_0:nios2_gen2_0_debug_mem_slave_readdata
	wire         mm_interconnect_0_nios2_gen2_0_debug_mem_slave_waitrequest;  // nios2_gen2_0:debug_mem_slave_waitrequest -> mm_interconnect_0:nios2_gen2_0_debug_mem_slave_waitrequest
	wire         mm_interconnect_0_nios2_gen2_0_debug_mem_slave_debugaccess;  // mm_interconnect_0:nios2_gen2_0_debug_mem_slave_debugaccess -> nios2_gen2_0:debug_mem_slave_debugaccess
	wire   [8:0] mm_interconnect_0_nios2_gen2_0_debug_mem_slave_address;      // mm_interconnect_0:nios2_gen2_0_debug_mem_slave_address -> nios2_gen2_0:debug_mem_slave_address
	wire         mm_interconnect_0_nios2_gen2_0_debug_mem_slave_read;         // mm_interconnect_0:nios2_gen2_0_debug_mem_slave_read -> nios2_gen2_0:debug_mem_slave_read
	wire   [3:0] mm_interconnect_0_nios2_gen2_0_debug_mem_slave_byteenable;   // mm_interconnect_0:nios2_gen2_0_debug_mem_slave_byteenable -> nios2_gen2_0:debug_mem_slave_byteenable
	wire         mm_interconnect_0_nios2_gen2_0_debug_mem_slave_write;        // mm_interconnect_0:nios2_gen2_0_debug_mem_slave_write -> nios2_gen2_0:debug_mem_slave_write
	wire  [31:0] mm_interconnect_0_nios2_gen2_0_debug_mem_slave_writedata;    // mm_interconnect_0:nios2_gen2_0_debug_mem_slave_writedata -> nios2_gen2_0:debug_mem_slave_writedata
	wire         irq_mapper_receiver0_irq;                                    // jtag_uart_0:av_irq -> irq_mapper:receiver0_irq
	wire  [31:0] nios2_gen2_0_irq_irq;                                        // irq_mapper:sender_irq -> nios2_gen2_0:irq
	wire         rst_controller_reset_out_reset;                              // rst_controller:reset_out -> [button_pio:reset_n, irq_mapper:reset, jtag_uart_0:rst_n, led_pio:reset_n, mm_interconnect_0:master_0_clk_reset_reset_bridge_in_reset_reset, mm_interconnect_0:nios2_gen2_0_reset_reset_bridge_in_reset_reset, nios2_gen2_0:reset_n, ocram_16b:reset, ocram_64K:reset, rst_translator:in_reset, switch_pio:reset_n, sysid_qsys_0:reset_n]
	wire         rst_controller_reset_out_reset_req;                          // rst_controller:reset_req -> [nios2_gen2_0:reset_req, ocram_16b:reset_req, ocram_64K:reset_req, rst_translator:reset_req_in]
	wire         master_0_master_reset_reset;                                 // master_0:master_reset_reset -> [rst_controller:reset_in1, rst_controller_001:reset_in1]
	wire         rst_controller_001_reset_out_reset;                          // rst_controller_001:reset_out -> master_0:clk_reset_reset

	soc_system_button_pio button_pio (
		.clk      (clk_clk),                                  //                 clk.clk
		.reset_n  (~rst_controller_reset_out_reset),          //               reset.reset_n
		.address  (mm_interconnect_0_button_pio_s1_address),  //                  s1.address
		.readdata (mm_interconnect_0_button_pio_s1_readdata), //                    .readdata
		.in_port  (button_pio_export)                         // external_connection.export
	);

	soc_system_jtag_uart_0 jtag_uart_0 (
		.clk            (clk_clk),                                                     //               clk.clk
		.rst_n          (~rst_controller_reset_out_reset),                             //             reset.reset_n
		.av_chipselect  (mm_interconnect_0_jtag_uart_0_avalon_jtag_slave_chipselect),  // avalon_jtag_slave.chipselect
		.av_address     (mm_interconnect_0_jtag_uart_0_avalon_jtag_slave_address),     //                  .address
		.av_read_n      (~mm_interconnect_0_jtag_uart_0_avalon_jtag_slave_read),       //                  .read_n
		.av_readdata    (mm_interconnect_0_jtag_uart_0_avalon_jtag_slave_readdata),    //                  .readdata
		.av_write_n     (~mm_interconnect_0_jtag_uart_0_avalon_jtag_slave_write),      //                  .write_n
		.av_writedata   (mm_interconnect_0_jtag_uart_0_avalon_jtag_slave_writedata),   //                  .writedata
		.av_waitrequest (mm_interconnect_0_jtag_uart_0_avalon_jtag_slave_waitrequest), //                  .waitrequest
		.av_irq         (irq_mapper_receiver0_irq)                                     //               irq.irq
	);

	soc_system_led_pio led_pio (
		.clk        (clk_clk),                                 //                 clk.clk
		.reset_n    (~rst_controller_reset_out_reset),         //               reset.reset_n
		.address    (mm_interconnect_0_led_pio_s1_address),    //                  s1.address
		.write_n    (~mm_interconnect_0_led_pio_s1_write),     //                    .write_n
		.writedata  (mm_interconnect_0_led_pio_s1_writedata),  //                    .writedata
		.chipselect (mm_interconnect_0_led_pio_s1_chipselect), //                    .chipselect
		.readdata   (mm_interconnect_0_led_pio_s1_readdata),   //                    .readdata
		.out_port   (led_pio_export)                           // external_connection.export
	);

	soc_system_master_0 #(
		.USE_PLI     (0),
		.PLI_PORT    (50000),
		.FIFO_DEPTHS (2)
	) master_0 (
		.clk_clk              (clk_clk),                            //          clk.clk
		.clk_reset_reset      (rst_controller_001_reset_out_reset), //    clk_reset.reset
		.master_address       (master_0_master_address),            //       master.address
		.master_readdata      (master_0_master_readdata),           //             .readdata
		.master_read          (master_0_master_read),               //             .read
		.master_write         (master_0_master_write),              //             .write
		.master_writedata     (master_0_master_writedata),          //             .writedata
		.master_waitrequest   (master_0_master_waitrequest),        //             .waitrequest
		.master_readdatavalid (master_0_master_readdatavalid),      //             .readdatavalid
		.master_byteenable    (master_0_master_byteenable),         //             .byteenable
		.master_reset_reset   (master_0_master_reset_reset)         // master_reset.reset
	);

	soc_system_nios2_gen2_0 nios2_gen2_0 (
		.clk                                 (clk_clk),                                                    //                       clk.clk
		.reset_n                             (~rst_controller_reset_out_reset),                            //                     reset.reset_n
		.reset_req                           (rst_controller_reset_out_reset_req),                         //                          .reset_req
		.d_address                           (nios2_gen2_0_data_master_address),                           //               data_master.address
		.d_byteenable                        (nios2_gen2_0_data_master_byteenable),                        //                          .byteenable
		.d_read                              (nios2_gen2_0_data_master_read),                              //                          .read
		.d_readdata                          (nios2_gen2_0_data_master_readdata),                          //                          .readdata
		.d_waitrequest                       (nios2_gen2_0_data_master_waitrequest),                       //                          .waitrequest
		.d_write                             (nios2_gen2_0_data_master_write),                             //                          .write
		.d_writedata                         (nios2_gen2_0_data_master_writedata),                         //                          .writedata
		.debug_mem_slave_debugaccess_to_roms (nios2_gen2_0_data_master_debugaccess),                       //                          .debugaccess
		.i_address                           (nios2_gen2_0_instruction_master_address),                    //        instruction_master.address
		.i_read                              (nios2_gen2_0_instruction_master_read),                       //                          .read
		.i_readdata                          (nios2_gen2_0_instruction_master_readdata),                   //                          .readdata
		.i_waitrequest                       (nios2_gen2_0_instruction_master_waitrequest),                //                          .waitrequest
		.irq                                 (nios2_gen2_0_irq_irq),                                       //                       irq.irq
		.debug_reset_request                 (),                                                           //       debug_reset_request.reset
		.debug_mem_slave_address             (mm_interconnect_0_nios2_gen2_0_debug_mem_slave_address),     //           debug_mem_slave.address
		.debug_mem_slave_byteenable          (mm_interconnect_0_nios2_gen2_0_debug_mem_slave_byteenable),  //                          .byteenable
		.debug_mem_slave_debugaccess         (mm_interconnect_0_nios2_gen2_0_debug_mem_slave_debugaccess), //                          .debugaccess
		.debug_mem_slave_read                (mm_interconnect_0_nios2_gen2_0_debug_mem_slave_read),        //                          .read
		.debug_mem_slave_readdata            (mm_interconnect_0_nios2_gen2_0_debug_mem_slave_readdata),    //                          .readdata
		.debug_mem_slave_waitrequest         (mm_interconnect_0_nios2_gen2_0_debug_mem_slave_waitrequest), //                          .waitrequest
		.debug_mem_slave_write               (mm_interconnect_0_nios2_gen2_0_debug_mem_slave_write),       //                          .write
		.debug_mem_slave_writedata           (mm_interconnect_0_nios2_gen2_0_debug_mem_slave_writedata),   //                          .writedata
		.dummy_ci_port                       ()                                                            // custom_instruction_master.readra
	);

	soc_system_ocram_16b ocram_16b (
		.clk        (clk_clk),                                   //   clk1.clk
		.address    (mm_interconnect_0_ocram_16b_s1_address),    //     s1.address
		.clken      (mm_interconnect_0_ocram_16b_s1_clken),      //       .clken
		.chipselect (mm_interconnect_0_ocram_16b_s1_chipselect), //       .chipselect
		.write      (mm_interconnect_0_ocram_16b_s1_write),      //       .write
		.readdata   (mm_interconnect_0_ocram_16b_s1_readdata),   //       .readdata
		.writedata  (mm_interconnect_0_ocram_16b_s1_writedata),  //       .writedata
		.byteenable (mm_interconnect_0_ocram_16b_s1_byteenable), //       .byteenable
		.reset      (rst_controller_reset_out_reset),            // reset1.reset
		.reset_req  (rst_controller_reset_out_reset_req),        //       .reset_req
		.freeze     (1'b0)                                       // (terminated)
	);

	soc_system_ocram_64K ocram_64k (
		.clk        (clk_clk),                                   //   clk1.clk
		.address    (mm_interconnect_0_ocram_64k_s1_address),    //     s1.address
		.clken      (mm_interconnect_0_ocram_64k_s1_clken),      //       .clken
		.chipselect (mm_interconnect_0_ocram_64k_s1_chipselect), //       .chipselect
		.write      (mm_interconnect_0_ocram_64k_s1_write),      //       .write
		.readdata   (mm_interconnect_0_ocram_64k_s1_readdata),   //       .readdata
		.writedata  (mm_interconnect_0_ocram_64k_s1_writedata),  //       .writedata
		.byteenable (mm_interconnect_0_ocram_64k_s1_byteenable), //       .byteenable
		.reset      (rst_controller_reset_out_reset),            // reset1.reset
		.reset_req  (rst_controller_reset_out_reset_req),        //       .reset_req
		.freeze     (1'b0)                                       // (terminated)
	);

	soc_system_switch_pio switch_pio (
		.clk      (clk_clk),                                  //                 clk.clk
		.reset_n  (~rst_controller_reset_out_reset),          //               reset.reset_n
		.address  (mm_interconnect_0_switch_pio_s1_address),  //                  s1.address
		.readdata (mm_interconnect_0_switch_pio_s1_readdata), //                    .readdata
		.in_port  (switch_pio_export)                         // external_connection.export
	);

	soc_system_sysid_qsys_0 sysid_qsys_0 (
		.clock    (clk_clk),                                               //           clk.clk
		.reset_n  (~rst_controller_reset_out_reset),                       //         reset.reset_n
		.readdata (mm_interconnect_0_sysid_qsys_0_control_slave_readdata), // control_slave.readdata
		.address  (mm_interconnect_0_sysid_qsys_0_control_slave_address)   //              .address
	);

	soc_system_mm_interconnect_0 mm_interconnect_0 (
		.clk_0_clk_clk                                  (clk_clk),                                                     //                                clk_0_clk.clk
		.master_0_clk_reset_reset_bridge_in_reset_reset (rst_controller_reset_out_reset),                              // master_0_clk_reset_reset_bridge_in_reset.reset
		.nios2_gen2_0_reset_reset_bridge_in_reset_reset (rst_controller_reset_out_reset),                              // nios2_gen2_0_reset_reset_bridge_in_reset.reset
		.master_0_master_address                        (master_0_master_address),                                     //                          master_0_master.address
		.master_0_master_waitrequest                    (master_0_master_waitrequest),                                 //                                         .waitrequest
		.master_0_master_byteenable                     (master_0_master_byteenable),                                  //                                         .byteenable
		.master_0_master_read                           (master_0_master_read),                                        //                                         .read
		.master_0_master_readdata                       (master_0_master_readdata),                                    //                                         .readdata
		.master_0_master_readdatavalid                  (master_0_master_readdatavalid),                               //                                         .readdatavalid
		.master_0_master_write                          (master_0_master_write),                                       //                                         .write
		.master_0_master_writedata                      (master_0_master_writedata),                                   //                                         .writedata
		.nios2_gen2_0_data_master_address               (nios2_gen2_0_data_master_address),                            //                 nios2_gen2_0_data_master.address
		.nios2_gen2_0_data_master_waitrequest           (nios2_gen2_0_data_master_waitrequest),                        //                                         .waitrequest
		.nios2_gen2_0_data_master_byteenable            (nios2_gen2_0_data_master_byteenable),                         //                                         .byteenable
		.nios2_gen2_0_data_master_read                  (nios2_gen2_0_data_master_read),                               //                                         .read
		.nios2_gen2_0_data_master_readdata              (nios2_gen2_0_data_master_readdata),                           //                                         .readdata
		.nios2_gen2_0_data_master_write                 (nios2_gen2_0_data_master_write),                              //                                         .write
		.nios2_gen2_0_data_master_writedata             (nios2_gen2_0_data_master_writedata),                          //                                         .writedata
		.nios2_gen2_0_data_master_debugaccess           (nios2_gen2_0_data_master_debugaccess),                        //                                         .debugaccess
		.nios2_gen2_0_instruction_master_address        (nios2_gen2_0_instruction_master_address),                     //          nios2_gen2_0_instruction_master.address
		.nios2_gen2_0_instruction_master_waitrequest    (nios2_gen2_0_instruction_master_waitrequest),                 //                                         .waitrequest
		.nios2_gen2_0_instruction_master_read           (nios2_gen2_0_instruction_master_read),                        //                                         .read
		.nios2_gen2_0_instruction_master_readdata       (nios2_gen2_0_instruction_master_readdata),                    //                                         .readdata
		.button_pio_s1_address                          (mm_interconnect_0_button_pio_s1_address),                     //                            button_pio_s1.address
		.button_pio_s1_readdata                         (mm_interconnect_0_button_pio_s1_readdata),                    //                                         .readdata
		.jtag_uart_0_avalon_jtag_slave_address          (mm_interconnect_0_jtag_uart_0_avalon_jtag_slave_address),     //            jtag_uart_0_avalon_jtag_slave.address
		.jtag_uart_0_avalon_jtag_slave_write            (mm_interconnect_0_jtag_uart_0_avalon_jtag_slave_write),       //                                         .write
		.jtag_uart_0_avalon_jtag_slave_read             (mm_interconnect_0_jtag_uart_0_avalon_jtag_slave_read),        //                                         .read
		.jtag_uart_0_avalon_jtag_slave_readdata         (mm_interconnect_0_jtag_uart_0_avalon_jtag_slave_readdata),    //                                         .readdata
		.jtag_uart_0_avalon_jtag_slave_writedata        (mm_interconnect_0_jtag_uart_0_avalon_jtag_slave_writedata),   //                                         .writedata
		.jtag_uart_0_avalon_jtag_slave_waitrequest      (mm_interconnect_0_jtag_uart_0_avalon_jtag_slave_waitrequest), //                                         .waitrequest
		.jtag_uart_0_avalon_jtag_slave_chipselect       (mm_interconnect_0_jtag_uart_0_avalon_jtag_slave_chipselect),  //                                         .chipselect
		.led_pio_s1_address                             (mm_interconnect_0_led_pio_s1_address),                        //                               led_pio_s1.address
		.led_pio_s1_write                               (mm_interconnect_0_led_pio_s1_write),                          //                                         .write
		.led_pio_s1_readdata                            (mm_interconnect_0_led_pio_s1_readdata),                       //                                         .readdata
		.led_pio_s1_writedata                           (mm_interconnect_0_led_pio_s1_writedata),                      //                                         .writedata
		.led_pio_s1_chipselect                          (mm_interconnect_0_led_pio_s1_chipselect),                     //                                         .chipselect
		.nios2_gen2_0_debug_mem_slave_address           (mm_interconnect_0_nios2_gen2_0_debug_mem_slave_address),      //             nios2_gen2_0_debug_mem_slave.address
		.nios2_gen2_0_debug_mem_slave_write             (mm_interconnect_0_nios2_gen2_0_debug_mem_slave_write),        //                                         .write
		.nios2_gen2_0_debug_mem_slave_read              (mm_interconnect_0_nios2_gen2_0_debug_mem_slave_read),         //                                         .read
		.nios2_gen2_0_debug_mem_slave_readdata          (mm_interconnect_0_nios2_gen2_0_debug_mem_slave_readdata),     //                                         .readdata
		.nios2_gen2_0_debug_mem_slave_writedata         (mm_interconnect_0_nios2_gen2_0_debug_mem_slave_writedata),    //                                         .writedata
		.nios2_gen2_0_debug_mem_slave_byteenable        (mm_interconnect_0_nios2_gen2_0_debug_mem_slave_byteenable),   //                                         .byteenable
		.nios2_gen2_0_debug_mem_slave_waitrequest       (mm_interconnect_0_nios2_gen2_0_debug_mem_slave_waitrequest),  //                                         .waitrequest
		.nios2_gen2_0_debug_mem_slave_debugaccess       (mm_interconnect_0_nios2_gen2_0_debug_mem_slave_debugaccess),  //                                         .debugaccess
		.ocram_16b_s1_address                           (mm_interconnect_0_ocram_16b_s1_address),                      //                             ocram_16b_s1.address
		.ocram_16b_s1_write                             (mm_interconnect_0_ocram_16b_s1_write),                        //                                         .write
		.ocram_16b_s1_readdata                          (mm_interconnect_0_ocram_16b_s1_readdata),                     //                                         .readdata
		.ocram_16b_s1_writedata                         (mm_interconnect_0_ocram_16b_s1_writedata),                    //                                         .writedata
		.ocram_16b_s1_byteenable                        (mm_interconnect_0_ocram_16b_s1_byteenable),                   //                                         .byteenable
		.ocram_16b_s1_chipselect                        (mm_interconnect_0_ocram_16b_s1_chipselect),                   //                                         .chipselect
		.ocram_16b_s1_clken                             (mm_interconnect_0_ocram_16b_s1_clken),                        //                                         .clken
		.ocram_64K_s1_address                           (mm_interconnect_0_ocram_64k_s1_address),                      //                             ocram_64K_s1.address
		.ocram_64K_s1_write                             (mm_interconnect_0_ocram_64k_s1_write),                        //                                         .write
		.ocram_64K_s1_readdata                          (mm_interconnect_0_ocram_64k_s1_readdata),                     //                                         .readdata
		.ocram_64K_s1_writedata                         (mm_interconnect_0_ocram_64k_s1_writedata),                    //                                         .writedata
		.ocram_64K_s1_byteenable                        (mm_interconnect_0_ocram_64k_s1_byteenable),                   //                                         .byteenable
		.ocram_64K_s1_chipselect                        (mm_interconnect_0_ocram_64k_s1_chipselect),                   //                                         .chipselect
		.ocram_64K_s1_clken                             (mm_interconnect_0_ocram_64k_s1_clken),                        //                                         .clken
		.switch_pio_s1_address                          (mm_interconnect_0_switch_pio_s1_address),                     //                            switch_pio_s1.address
		.switch_pio_s1_readdata                         (mm_interconnect_0_switch_pio_s1_readdata),                    //                                         .readdata
		.sysid_qsys_0_control_slave_address             (mm_interconnect_0_sysid_qsys_0_control_slave_address),        //               sysid_qsys_0_control_slave.address
		.sysid_qsys_0_control_slave_readdata            (mm_interconnect_0_sysid_qsys_0_control_slave_readdata)        //                                         .readdata
	);

	soc_system_irq_mapper irq_mapper (
		.clk           (clk_clk),                        //       clk.clk
		.reset         (rst_controller_reset_out_reset), // clk_reset.reset
		.receiver0_irq (irq_mapper_receiver0_irq),       // receiver0.irq
		.sender_irq    (nios2_gen2_0_irq_irq)            //    sender.irq
	);

	altera_reset_controller #(
		.NUM_RESET_INPUTS          (2),
		.OUTPUT_RESET_SYNC_EDGES   ("deassert"),
		.SYNC_DEPTH                (2),
		.RESET_REQUEST_PRESENT     (1),
		.RESET_REQ_WAIT_TIME       (1),
		.MIN_RST_ASSERTION_TIME    (3),
		.RESET_REQ_EARLY_DSRT_TIME (1),
		.USE_RESET_REQUEST_IN0     (0),
		.USE_RESET_REQUEST_IN1     (0),
		.USE_RESET_REQUEST_IN2     (0),
		.USE_RESET_REQUEST_IN3     (0),
		.USE_RESET_REQUEST_IN4     (0),
		.USE_RESET_REQUEST_IN5     (0),
		.USE_RESET_REQUEST_IN6     (0),
		.USE_RESET_REQUEST_IN7     (0),
		.USE_RESET_REQUEST_IN8     (0),
		.USE_RESET_REQUEST_IN9     (0),
		.USE_RESET_REQUEST_IN10    (0),
		.USE_RESET_REQUEST_IN11    (0),
		.USE_RESET_REQUEST_IN12    (0),
		.USE_RESET_REQUEST_IN13    (0),
		.USE_RESET_REQUEST_IN14    (0),
		.USE_RESET_REQUEST_IN15    (0),
		.ADAPT_RESET_REQUEST       (0)
	) rst_controller (
		.reset_in0      (~reset_reset_n),                     // reset_in0.reset
		.reset_in1      (master_0_master_reset_reset),        // reset_in1.reset
		.clk            (clk_clk),                            //       clk.clk
		.reset_out      (rst_controller_reset_out_reset),     // reset_out.reset
		.reset_req      (rst_controller_reset_out_reset_req), //          .reset_req
		.reset_req_in0  (1'b0),                               // (terminated)
		.reset_req_in1  (1'b0),                               // (terminated)
		.reset_in2      (1'b0),                               // (terminated)
		.reset_req_in2  (1'b0),                               // (terminated)
		.reset_in3      (1'b0),                               // (terminated)
		.reset_req_in3  (1'b0),                               // (terminated)
		.reset_in4      (1'b0),                               // (terminated)
		.reset_req_in4  (1'b0),                               // (terminated)
		.reset_in5      (1'b0),                               // (terminated)
		.reset_req_in5  (1'b0),                               // (terminated)
		.reset_in6      (1'b0),                               // (terminated)
		.reset_req_in6  (1'b0),                               // (terminated)
		.reset_in7      (1'b0),                               // (terminated)
		.reset_req_in7  (1'b0),                               // (terminated)
		.reset_in8      (1'b0),                               // (terminated)
		.reset_req_in8  (1'b0),                               // (terminated)
		.reset_in9      (1'b0),                               // (terminated)
		.reset_req_in9  (1'b0),                               // (terminated)
		.reset_in10     (1'b0),                               // (terminated)
		.reset_req_in10 (1'b0),                               // (terminated)
		.reset_in11     (1'b0),                               // (terminated)
		.reset_req_in11 (1'b0),                               // (terminated)
		.reset_in12     (1'b0),                               // (terminated)
		.reset_req_in12 (1'b0),                               // (terminated)
		.reset_in13     (1'b0),                               // (terminated)
		.reset_req_in13 (1'b0),                               // (terminated)
		.reset_in14     (1'b0),                               // (terminated)
		.reset_req_in14 (1'b0),                               // (terminated)
		.reset_in15     (1'b0),                               // (terminated)
		.reset_req_in15 (1'b0)                                // (terminated)
	);

	altera_reset_controller #(
		.NUM_RESET_INPUTS          (2),
		.OUTPUT_RESET_SYNC_EDGES   ("none"),
		.SYNC_DEPTH                (2),
		.RESET_REQUEST_PRESENT     (0),
		.RESET_REQ_WAIT_TIME       (1),
		.MIN_RST_ASSERTION_TIME    (3),
		.RESET_REQ_EARLY_DSRT_TIME (1),
		.USE_RESET_REQUEST_IN0     (0),
		.USE_RESET_REQUEST_IN1     (0),
		.USE_RESET_REQUEST_IN2     (0),
		.USE_RESET_REQUEST_IN3     (0),
		.USE_RESET_REQUEST_IN4     (0),
		.USE_RESET_REQUEST_IN5     (0),
		.USE_RESET_REQUEST_IN6     (0),
		.USE_RESET_REQUEST_IN7     (0),
		.USE_RESET_REQUEST_IN8     (0),
		.USE_RESET_REQUEST_IN9     (0),
		.USE_RESET_REQUEST_IN10    (0),
		.USE_RESET_REQUEST_IN11    (0),
		.USE_RESET_REQUEST_IN12    (0),
		.USE_RESET_REQUEST_IN13    (0),
		.USE_RESET_REQUEST_IN14    (0),
		.USE_RESET_REQUEST_IN15    (0),
		.ADAPT_RESET_REQUEST       (0)
	) rst_controller_001 (
		.reset_in0      (~reset_reset_n),                     // reset_in0.reset
		.reset_in1      (master_0_master_reset_reset),        // reset_in1.reset
		.clk            (),                                   //       clk.clk
		.reset_out      (rst_controller_001_reset_out_reset), // reset_out.reset
		.reset_req      (),                                   // (terminated)
		.reset_req_in0  (1'b0),                               // (terminated)
		.reset_req_in1  (1'b0),                               // (terminated)
		.reset_in2      (1'b0),                               // (terminated)
		.reset_req_in2  (1'b0),                               // (terminated)
		.reset_in3      (1'b0),                               // (terminated)
		.reset_req_in3  (1'b0),                               // (terminated)
		.reset_in4      (1'b0),                               // (terminated)
		.reset_req_in4  (1'b0),                               // (terminated)
		.reset_in5      (1'b0),                               // (terminated)
		.reset_req_in5  (1'b0),                               // (terminated)
		.reset_in6      (1'b0),                               // (terminated)
		.reset_req_in6  (1'b0),                               // (terminated)
		.reset_in7      (1'b0),                               // (terminated)
		.reset_req_in7  (1'b0),                               // (terminated)
		.reset_in8      (1'b0),                               // (terminated)
		.reset_req_in8  (1'b0),                               // (terminated)
		.reset_in9      (1'b0),                               // (terminated)
		.reset_req_in9  (1'b0),                               // (terminated)
		.reset_in10     (1'b0),                               // (terminated)
		.reset_req_in10 (1'b0),                               // (terminated)
		.reset_in11     (1'b0),                               // (terminated)
		.reset_req_in11 (1'b0),                               // (terminated)
		.reset_in12     (1'b0),                               // (terminated)
		.reset_req_in12 (1'b0),                               // (terminated)
		.reset_in13     (1'b0),                               // (terminated)
		.reset_req_in13 (1'b0),                               // (terminated)
		.reset_in14     (1'b0),                               // (terminated)
		.reset_req_in14 (1'b0),                               // (terminated)
		.reset_in15     (1'b0),                               // (terminated)
		.reset_req_in15 (1'b0)                                // (terminated)
	);

endmodule