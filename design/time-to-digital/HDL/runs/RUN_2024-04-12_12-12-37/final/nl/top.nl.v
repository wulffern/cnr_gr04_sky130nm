module top (clk,
    data_in,
    ready,
    rst,
    running,
    start,
    temp_reset,
    count_out);
 input clk;
 input data_in;
 output ready;
 input rst;
 output running;
 input start;
 output temp_reset;
 output [6:0] count_out;

 wire _000_;
 wire _001_;
 wire _002_;
 wire _003_;
 wire _004_;
 wire _005_;
 wire _006_;
 wire _007_;
 wire _008_;
 wire _009_;
 wire _010_;
 wire _011_;
 wire _012_;
 wire _013_;
 wire _014_;
 wire _015_;
 wire _016_;
 wire _017_;
 wire _018_;
 wire _019_;
 wire _020_;
 wire _021_;
 wire _022_;
 wire _023_;
 wire _024_;
 wire _025_;
 wire _026_;
 wire _027_;
 wire _028_;
 wire _029_;
 wire _030_;
 wire _031_;
 wire _032_;
 wire _033_;
 wire _034_;
 wire _035_;
 wire _036_;
 wire _037_;
 wire _038_;
 wire _039_;
 wire _040_;
 wire _041_;
 wire _042_;
 wire _043_;
 wire _044_;
 wire _045_;
 wire _046_;
 wire _047_;
 wire _048_;
 wire \controller_inst.clear ;
 wire \data_counter_inst.inc ;
 wire \data_edge_detector_inst.input_buffer[0] ;
 wire \data_edge_detector_inst.input_buffer[1] ;
 wire \data_edge_detector_inst.reset_counter[0] ;
 wire \data_edge_detector_inst.reset_counter[1] ;
 wire \data_edge_detector_inst.state[0] ;
 wire net1;
 wire net2;
 wire net3;
 wire net4;
 wire net5;
 wire net6;
 wire net7;
 wire net8;
 wire net9;
 wire net10;
 wire net11;
 wire net12;
 wire net13;
 wire clknet_0_clk;
 wire clknet_1_0__leaf_clk;
 wire clknet_1_1__leaf_clk;
 wire net14;
 wire net15;
 wire net16;
 wire net17;
 wire net18;
 wire net19;
 wire net20;
 wire net21;
 wire net22;
 wire net23;
 wire net24;
 wire net25;
 wire net26;

 sky130_fd_sc_hd__inv_2 _049_ (.A(net18),
    .Y(_017_));
 sky130_fd_sc_hd__inv_2 _050_ (.A(net16),
    .Y(_018_));
 sky130_fd_sc_hd__inv_2 _051_ (.A(\data_edge_detector_inst.input_buffer[0] ),
    .Y(_019_));
 sky130_fd_sc_hd__inv_2 _052_ (.A(net2),
    .Y(_020_));
 sky130_fd_sc_hd__inv_2 _053_ (.A(net3),
    .Y(_021_));
 sky130_fd_sc_hd__or3_1 _054_ (.A(net8),
    .B(net7),
    .C(net6),
    .X(_022_));
 sky130_fd_sc_hd__nand2_1 _055_ (.A(net10),
    .B(net9),
    .Y(_023_));
 sky130_fd_sc_hd__nand2_1 _056_ (.A(net5),
    .B(net4),
    .Y(_024_));
 sky130_fd_sc_hd__nor3_1 _057_ (.A(_022_),
    .B(_023_),
    .C(_024_),
    .Y(_025_));
 sky130_fd_sc_hd__o31a_1 _058_ (.A1(_022_),
    .A2(_023_),
    .A3(_024_),
    .B1(net12),
    .X(_026_));
 sky130_fd_sc_hd__o21a_1 _059_ (.A1(net14),
    .A2(_026_),
    .B1(_020_),
    .X(_003_));
 sky130_fd_sc_hd__a221o_1 _060_ (.A1(_021_),
    .A2(net15),
    .B1(_025_),
    .B2(net12),
    .C1(net2),
    .X(_002_));
 sky130_fd_sc_hd__a21boi_1 _061_ (.A1(\data_edge_detector_inst.reset_counter[1] ),
    .A2(\data_edge_detector_inst.reset_counter[0] ),
    .B1_N(net13),
    .Y(_027_));
 sky130_fd_sc_hd__o21a_1 _062_ (.A1(net17),
    .A2(_027_),
    .B1(_020_),
    .X(_005_));
 sky130_fd_sc_hd__o21a_1 _063_ (.A1(\data_edge_detector_inst.input_buffer[1] ),
    .A2(_019_),
    .B1(\data_edge_detector_inst.state[0] ),
    .X(_028_));
 sky130_fd_sc_hd__a311o_1 _064_ (.A1(net16),
    .A2(net20),
    .A3(net26),
    .B1(net2),
    .C1(_028_),
    .X(_004_));
 sky130_fd_sc_hd__and3_1 _065_ (.A(_020_),
    .B(net3),
    .C(net15),
    .X(_000_));
 sky130_fd_sc_hd__and4b_1 _066_ (.A_N(net24),
    .B(\data_edge_detector_inst.input_buffer[0] ),
    .C(\data_edge_detector_inst.state[0] ),
    .D(_020_),
    .X(_001_));
 sky130_fd_sc_hd__mux2_1 _067_ (.A0(\data_edge_detector_inst.input_buffer[0] ),
    .A1(net1),
    .S(\data_edge_detector_inst.state[0] ),
    .X(_029_));
 sky130_fd_sc_hd__and2_1 _068_ (.A(_020_),
    .B(_029_),
    .X(_006_));
 sky130_fd_sc_hd__mux2_1 _069_ (.A0(\data_edge_detector_inst.input_buffer[1] ),
    .A1(\data_edge_detector_inst.input_buffer[0] ),
    .S(\data_edge_detector_inst.state[0] ),
    .X(_030_));
 sky130_fd_sc_hd__and2_1 _070_ (.A(_020_),
    .B(_030_),
    .X(_007_));
 sky130_fd_sc_hd__and2b_1 _071_ (.A_N(net13),
    .B(\data_edge_detector_inst.state[0] ),
    .X(_031_));
 sky130_fd_sc_hd__o21ai_1 _072_ (.A1(_027_),
    .A2(_031_),
    .B1(net25),
    .Y(_032_));
 sky130_fd_sc_hd__o211a_1 _073_ (.A1(net20),
    .A2(net21),
    .B1(_020_),
    .C1(_032_),
    .X(_008_));
 sky130_fd_sc_hd__a211oi_1 _074_ (.A1(_018_),
    .A2(_032_),
    .B1(_031_),
    .C1(net2),
    .Y(_009_));
 sky130_fd_sc_hd__nand2_1 _075_ (.A(net12),
    .B(\data_counter_inst.inc ),
    .Y(_033_));
 sky130_fd_sc_hd__nor2_1 _076_ (.A(\controller_inst.clear ),
    .B(net2),
    .Y(_034_));
 sky130_fd_sc_hd__o21ai_1 _077_ (.A1(_017_),
    .A2(_033_),
    .B1(_034_),
    .Y(_035_));
 sky130_fd_sc_hd__a21oi_1 _078_ (.A1(_017_),
    .A2(_033_),
    .B1(_035_),
    .Y(_010_));
 sky130_fd_sc_hd__a31o_1 _079_ (.A1(net4),
    .A2(net12),
    .A3(\data_counter_inst.inc ),
    .B1(net5),
    .X(_036_));
 sky130_fd_sc_hd__and4_2 _080_ (.A(net5),
    .B(net4),
    .C(net12),
    .D(\data_counter_inst.inc ),
    .X(_037_));
 sky130_fd_sc_hd__and3b_1 _081_ (.A_N(_037_),
    .B(_034_),
    .C(_036_),
    .X(_011_));
 sky130_fd_sc_hd__o41a_1 _082_ (.A1(_022_),
    .A2(_023_),
    .A3(_024_),
    .A4(_033_),
    .B1(_034_),
    .X(_038_));
 sky130_fd_sc_hd__nand2_1 _083_ (.A(net6),
    .B(_037_),
    .Y(_039_));
 sky130_fd_sc_hd__or2_1 _084_ (.A(net6),
    .B(_037_),
    .X(_040_));
 sky130_fd_sc_hd__and3_1 _085_ (.A(_038_),
    .B(_039_),
    .C(_040_),
    .X(_012_));
 sky130_fd_sc_hd__nand3_1 _086_ (.A(net7),
    .B(net6),
    .C(_037_),
    .Y(_041_));
 sky130_fd_sc_hd__a21o_1 _087_ (.A1(net6),
    .A2(_037_),
    .B1(net7),
    .X(_042_));
 sky130_fd_sc_hd__and3_1 _088_ (.A(_034_),
    .B(_041_),
    .C(_042_),
    .X(_013_));
 sky130_fd_sc_hd__a31o_1 _089_ (.A1(net7),
    .A2(net6),
    .A3(_037_),
    .B1(net8),
    .X(_043_));
 sky130_fd_sc_hd__and3_1 _090_ (.A(net8),
    .B(net7),
    .C(net6),
    .X(_044_));
 sky130_fd_sc_hd__nand2_1 _091_ (.A(_037_),
    .B(_044_),
    .Y(_045_));
 sky130_fd_sc_hd__and3_1 _092_ (.A(_034_),
    .B(_043_),
    .C(_045_),
    .X(_014_));
 sky130_fd_sc_hd__nand3_1 _093_ (.A(net9),
    .B(_037_),
    .C(_044_),
    .Y(_046_));
 sky130_fd_sc_hd__a21o_1 _094_ (.A1(_037_),
    .A2(_044_),
    .B1(net9),
    .X(_047_));
 sky130_fd_sc_hd__and3_1 _095_ (.A(_038_),
    .B(_046_),
    .C(_047_),
    .X(_015_));
 sky130_fd_sc_hd__a31o_1 _096_ (.A1(net9),
    .A2(_037_),
    .A3(_044_),
    .B1(net23),
    .X(_048_));
 sky130_fd_sc_hd__o211a_1 _097_ (.A1(_023_),
    .A2(_045_),
    .B1(_048_),
    .C1(_038_),
    .X(_016_));
 sky130_fd_sc_hd__dfxtp_1 _098_ (.CLK(clknet_1_0__leaf_clk),
    .D(_002_),
    .Q(net11));
 sky130_fd_sc_hd__dfxtp_1 _099_ (.CLK(clknet_1_0__leaf_clk),
    .D(_003_),
    .Q(net12));
 sky130_fd_sc_hd__dfxtp_1 _100_ (.CLK(clknet_1_0__leaf_clk),
    .D(_000_),
    .Q(\controller_inst.clear ));
 sky130_fd_sc_hd__dfxtp_1 _101_ (.CLK(clknet_1_1__leaf_clk),
    .D(_004_),
    .Q(\data_edge_detector_inst.state[0] ));
 sky130_fd_sc_hd__dfxtp_1 _102_ (.CLK(clknet_1_1__leaf_clk),
    .D(_005_),
    .Q(net13));
 sky130_fd_sc_hd__dfxtp_1 _103_ (.CLK(clknet_1_1__leaf_clk),
    .D(_001_),
    .Q(\data_counter_inst.inc ));
 sky130_fd_sc_hd__dfxtp_1 _104_ (.CLK(clknet_1_1__leaf_clk),
    .D(_006_),
    .Q(\data_edge_detector_inst.input_buffer[0] ));
 sky130_fd_sc_hd__dfxtp_1 _105_ (.CLK(clknet_1_1__leaf_clk),
    .D(_007_),
    .Q(\data_edge_detector_inst.input_buffer[1] ));
 sky130_fd_sc_hd__dfxtp_1 _106_ (.CLK(clknet_1_1__leaf_clk),
    .D(net22),
    .Q(\data_edge_detector_inst.reset_counter[0] ));
 sky130_fd_sc_hd__dfxtp_1 _107_ (.CLK(clknet_1_1__leaf_clk),
    .D(_009_),
    .Q(\data_edge_detector_inst.reset_counter[1] ));
 sky130_fd_sc_hd__dfxtp_1 _108_ (.CLK(clknet_1_0__leaf_clk),
    .D(net19),
    .Q(net4));
 sky130_fd_sc_hd__dfxtp_1 _109_ (.CLK(clknet_1_0__leaf_clk),
    .D(_011_),
    .Q(net5));
 sky130_fd_sc_hd__dfxtp_1 _110_ (.CLK(clknet_1_0__leaf_clk),
    .D(_012_),
    .Q(net6));
 sky130_fd_sc_hd__dfxtp_1 _111_ (.CLK(clknet_1_1__leaf_clk),
    .D(_013_),
    .Q(net7));
 sky130_fd_sc_hd__dfxtp_1 _112_ (.CLK(clknet_1_1__leaf_clk),
    .D(_014_),
    .Q(net8));
 sky130_fd_sc_hd__dfxtp_1 _113_ (.CLK(clknet_1_0__leaf_clk),
    .D(_015_),
    .Q(net9));
 sky130_fd_sc_hd__dfxtp_1 _114_ (.CLK(clknet_1_0__leaf_clk),
    .D(_016_),
    .Q(net10));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_0_Right_0 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_1_Right_1 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_2_Right_2 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_3_Right_3 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_4_Right_4 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_5_Right_5 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_6_Right_6 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_7_Right_7 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_8_Right_8 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_9_Right_9 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_10_Right_10 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_11_Right_11 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_12_Right_12 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_13_Right_13 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_0_Left_14 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_1_Left_15 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_2_Left_16 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_3_Left_17 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_4_Left_18 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_5_Left_19 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_6_Left_20 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_7_Left_21 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_8_Left_22 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_9_Left_23 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_10_Left_24 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_11_Left_25 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_12_Left_26 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_13_Left_27 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_28 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_29 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_1_30 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_2_31 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_3_32 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_4_33 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_5_34 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_6_35 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_7_36 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_8_37 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_9_38 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_10_39 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_11_40 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_12_41 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_13_42 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_13_43 ();
 sky130_fd_sc_hd__clkbuf_1 input1 (.A(data_in),
    .X(net1));
 sky130_fd_sc_hd__clkbuf_2 input2 (.A(rst),
    .X(net2));
 sky130_fd_sc_hd__buf_1 input3 (.A(start),
    .X(net3));
 sky130_fd_sc_hd__buf_2 output4 (.A(net4),
    .X(count_out[0]));
 sky130_fd_sc_hd__buf_2 output5 (.A(net5),
    .X(count_out[1]));
 sky130_fd_sc_hd__buf_2 output6 (.A(net6),
    .X(count_out[2]));
 sky130_fd_sc_hd__buf_2 output7 (.A(net7),
    .X(count_out[3]));
 sky130_fd_sc_hd__buf_2 output8 (.A(net8),
    .X(count_out[4]));
 sky130_fd_sc_hd__buf_2 output9 (.A(net9),
    .X(count_out[5]));
 sky130_fd_sc_hd__buf_2 output10 (.A(net10),
    .X(count_out[6]));
 sky130_fd_sc_hd__buf_2 output11 (.A(net11),
    .X(ready));
 sky130_fd_sc_hd__buf_2 output12 (.A(net12),
    .X(running));
 sky130_fd_sc_hd__clkbuf_4 output13 (.A(net13),
    .X(temp_reset));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_0_clk (.A(clk),
    .X(clknet_0_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_1_0__f_clk (.A(clknet_0_clk),
    .X(clknet_1_0__leaf_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_1_1__f_clk (.A(clknet_0_clk),
    .X(clknet_1_1__leaf_clk));
 sky130_fd_sc_hd__dlygate4sd3_1 hold1 (.A(\controller_inst.clear ),
    .X(net14));
 sky130_fd_sc_hd__dlygate4sd3_1 hold2 (.A(net11),
    .X(net15));
 sky130_fd_sc_hd__dlygate4sd3_1 hold3 (.A(\data_edge_detector_inst.reset_counter[1] ),
    .X(net16));
 sky130_fd_sc_hd__dlygate4sd3_1 hold4 (.A(\data_counter_inst.inc ),
    .X(net17));
 sky130_fd_sc_hd__dlygate4sd3_1 hold5 (.A(net4),
    .X(net18));
 sky130_fd_sc_hd__dlygate4sd3_1 hold6 (.A(_010_),
    .X(net19));
 sky130_fd_sc_hd__dlygate4sd3_1 hold7 (.A(\data_edge_detector_inst.reset_counter[0] ),
    .X(net20));
 sky130_fd_sc_hd__dlygate4sd3_1 hold8 (.A(net13),
    .X(net21));
 sky130_fd_sc_hd__dlygate4sd3_1 hold9 (.A(_008_),
    .X(net22));
 sky130_fd_sc_hd__dlygate4sd3_1 hold10 (.A(net10),
    .X(net23));
 sky130_fd_sc_hd__dlygate4sd3_1 hold11 (.A(\data_edge_detector_inst.input_buffer[1] ),
    .X(net24));
 sky130_fd_sc_hd__dlygate4sd3_1 hold12 (.A(\data_edge_detector_inst.reset_counter[0] ),
    .X(net25));
 sky130_fd_sc_hd__dlygate4sd3_1 hold13 (.A(net13),
    .X(net26));
 sky130_fd_sc_hd__fill_1 FILLER_0_0_3 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_0_52 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_0_63 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_0_75 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_0_81 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_1_3 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_1_11 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_1_78 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_2_3 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_2_15 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_2_19 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_2_33 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_2_55 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_2_67 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_2_75 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_3_3 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_3_15 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_3_21 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_3_26 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_3_34 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_3_48 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_3_57 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_3_69 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_3_81 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_4_19 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_4_27 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_4_29 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_4_51 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_4_57 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_5_30 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_5_50 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_5_81 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_6_25 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_6_29 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_6_33 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_6_65 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_6_73 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_7_12 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_7_22 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_7_47 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_7_55 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_7_67 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_7_75 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_8_3 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_8_21 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_8_29 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_9_7 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_9_17 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_9_60 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_9_80 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_10_3 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_10_10 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_10_29 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_10_52 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_10_64 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_10_76 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_11_22 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_11_31 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_11_35 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_11_73 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_11_81 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_12_3 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_12_27 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_12_29 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_12_35 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_12_68 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_12_80 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_13_3 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_13_15 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_13_27 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_13_29 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_13_41 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_13_53 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_13_71 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_13_79 ();
endmodule
