module BasicBus_1(
  input   clk,
  input   reset,
  output  io_in_0_ready,
  input   io_in_0_valid,
  input  [1:0] io_in_0_bits_header_src,
  input  [1:0] io_in_0_bits_header_dst,
  input  [2:0] io_in_0_bits_payload_addr_beat,
  input  [25:0] io_in_0_bits_payload_addr_block,
  input   io_in_0_bits_payload_client_xact_id,
  input   io_in_0_bits_payload_voluntary,
  input  [2:0] io_in_0_bits_payload_r_type,
  input  [63:0] io_in_0_bits_payload_data,
  output  io_in_1_ready,
  input   io_in_1_valid,
  input  [1:0] io_in_1_bits_header_src,
  input  [1:0] io_in_1_bits_header_dst,
  input  [2:0] io_in_1_bits_payload_addr_beat,
  input  [25:0] io_in_1_bits_payload_addr_block,
  input   io_in_1_bits_payload_client_xact_id,
  input   io_in_1_bits_payload_voluntary,
  input  [2:0] io_in_1_bits_payload_r_type,
  input  [63:0] io_in_1_bits_payload_data,
  output  io_in_2_ready,
  input   io_in_2_valid,
  input  [1:0] io_in_2_bits_header_src,
  input  [1:0] io_in_2_bits_header_dst,
  input  [2:0] io_in_2_bits_payload_addr_beat,
  input  [25:0] io_in_2_bits_payload_addr_block,
  input   io_in_2_bits_payload_client_xact_id,
  input   io_in_2_bits_payload_voluntary,
  input  [2:0] io_in_2_bits_payload_r_type,
  input  [63:0] io_in_2_bits_payload_data,
  output  io_in_3_ready,
  input   io_in_3_valid,
  input  [1:0] io_in_3_bits_header_src,
  input  [1:0] io_in_3_bits_header_dst,
  input  [2:0] io_in_3_bits_payload_addr_beat,
  input  [25:0] io_in_3_bits_payload_addr_block,
  input   io_in_3_bits_payload_client_xact_id,
  input   io_in_3_bits_payload_voluntary,
  input  [2:0] io_in_3_bits_payload_r_type,
  input  [63:0] io_in_3_bits_payload_data,
  input   io_out_0_ready,
  output  io_out_0_valid,
  output [1:0] io_out_0_bits_header_src,
  output [1:0] io_out_0_bits_header_dst,
  output [2:0] io_out_0_bits_payload_addr_beat,
  output [25:0] io_out_0_bits_payload_addr_block,
  output  io_out_0_bits_payload_client_xact_id,
  output  io_out_0_bits_payload_voluntary,
  output [2:0] io_out_0_bits_payload_r_type,
  output [63:0] io_out_0_bits_payload_data,
  input   io_out_1_ready,
  output  io_out_1_valid,
  output [1:0] io_out_1_bits_header_src,
  output [1:0] io_out_1_bits_header_dst,
  output [2:0] io_out_1_bits_payload_addr_beat,
  output [25:0] io_out_1_bits_payload_addr_block,
  output  io_out_1_bits_payload_client_xact_id,
  output  io_out_1_bits_payload_voluntary,
  output [2:0] io_out_1_bits_payload_r_type,
  output [63:0] io_out_1_bits_payload_data,
  input   io_out_2_ready,
  output  io_out_2_valid,
  output [1:0] io_out_2_bits_header_src,
  output [1:0] io_out_2_bits_header_dst,
  output [2:0] io_out_2_bits_payload_addr_beat,
  output [25:0] io_out_2_bits_payload_addr_block,
  output  io_out_2_bits_payload_client_xact_id,
  output  io_out_2_bits_payload_voluntary,
  output [2:0] io_out_2_bits_payload_r_type,
  output [63:0] io_out_2_bits_payload_data,
  input   io_out_3_ready,
  output  io_out_3_valid,
  output [1:0] io_out_3_bits_header_src,
  output [1:0] io_out_3_bits_header_dst,
  output [2:0] io_out_3_bits_payload_addr_beat,
  output [25:0] io_out_3_bits_payload_addr_block,
  output  io_out_3_bits_payload_client_xact_id,
  output  io_out_3_bits_payload_voluntary,
  output [2:0] io_out_3_bits_payload_r_type,
  output [63:0] io_out_3_bits_payload_data
);
  wire  arb_clk;
  wire  arb_reset;
  wire  arb_io_in_0_ready;
  wire  arb_io_in_0_valid;
  wire [1:0] arb_io_in_0_bits_header_src;
  wire [1:0] arb_io_in_0_bits_header_dst;
  wire [2:0] arb_io_in_0_bits_payload_addr_beat;
  wire [25:0] arb_io_in_0_bits_payload_addr_block;
  wire  arb_io_in_0_bits_payload_client_xact_id;
  wire  arb_io_in_0_bits_payload_voluntary;
  wire [2:0] arb_io_in_0_bits_payload_r_type;
  wire [63:0] arb_io_in_0_bits_payload_data;
  wire  arb_io_in_1_ready;
  wire  arb_io_in_1_valid;
  wire [1:0] arb_io_in_1_bits_header_src;
  wire [1:0] arb_io_in_1_bits_header_dst;
  wire [2:0] arb_io_in_1_bits_payload_addr_beat;
  wire [25:0] arb_io_in_1_bits_payload_addr_block;
  wire  arb_io_in_1_bits_payload_client_xact_id;
  wire  arb_io_in_1_bits_payload_voluntary;
  wire [2:0] arb_io_in_1_bits_payload_r_type;
  wire [63:0] arb_io_in_1_bits_payload_data;
  wire  arb_io_in_2_ready;
  wire  arb_io_in_2_valid;
  wire [1:0] arb_io_in_2_bits_header_src;
  wire [1:0] arb_io_in_2_bits_header_dst;
  wire [2:0] arb_io_in_2_bits_payload_addr_beat;
  wire [25:0] arb_io_in_2_bits_payload_addr_block;
  wire  arb_io_in_2_bits_payload_client_xact_id;
  wire  arb_io_in_2_bits_payload_voluntary;
  wire [2:0] arb_io_in_2_bits_payload_r_type;
  wire [63:0] arb_io_in_2_bits_payload_data;
  wire  arb_io_in_3_ready;
  wire  arb_io_in_3_valid;
  wire [1:0] arb_io_in_3_bits_header_src;
  wire [1:0] arb_io_in_3_bits_header_dst;
  wire [2:0] arb_io_in_3_bits_payload_addr_beat;
  wire [25:0] arb_io_in_3_bits_payload_addr_block;
  wire  arb_io_in_3_bits_payload_client_xact_id;
  wire  arb_io_in_3_bits_payload_voluntary;
  wire [2:0] arb_io_in_3_bits_payload_r_type;
  wire [63:0] arb_io_in_3_bits_payload_data;
  wire  arb_io_out_ready;
  wire  arb_io_out_valid;
  wire [1:0] arb_io_out_bits_header_src;
  wire [1:0] arb_io_out_bits_header_dst;
  wire [2:0] arb_io_out_bits_payload_addr_beat;
  wire [25:0] arb_io_out_bits_payload_addr_block;
  wire  arb_io_out_bits_payload_client_xact_id;
  wire  arb_io_out_bits_payload_voluntary;
  wire [2:0] arb_io_out_bits_payload_r_type;
  wire [63:0] arb_io_out_bits_payload_data;
  wire [1:0] arb_io_chosen;
  wire  GEN_0;
  wire  GEN_1;
  wire  GEN_2;
  wire  GEN_3;
  wire  T_1483;
  wire  T_1484;
  wire  T_1486;
  wire  T_1487;
  wire  T_1489;
  wire  T_1490;
  wire  T_1492;
  wire  T_1493;
  LockingRRArbiter_1 arb (
    .clk(arb_clk),
    .reset(arb_reset),
    .io_in_0_ready(arb_io_in_0_ready),
    .io_in_0_valid(arb_io_in_0_valid),
    .io_in_0_bits_header_src(arb_io_in_0_bits_header_src),
    .io_in_0_bits_header_dst(arb_io_in_0_bits_header_dst),
    .io_in_0_bits_payload_addr_beat(arb_io_in_0_bits_payload_addr_beat),
    .io_in_0_bits_payload_addr_block(arb_io_in_0_bits_payload_addr_block),
    .io_in_0_bits_payload_client_xact_id(arb_io_in_0_bits_payload_client_xact_id),
    .io_in_0_bits_payload_voluntary(arb_io_in_0_bits_payload_voluntary),
    .io_in_0_bits_payload_r_type(arb_io_in_0_bits_payload_r_type),
    .io_in_0_bits_payload_data(arb_io_in_0_bits_payload_data),
    .io_in_1_ready(arb_io_in_1_ready),
    .io_in_1_valid(arb_io_in_1_valid),
    .io_in_1_bits_header_src(arb_io_in_1_bits_header_src),
    .io_in_1_bits_header_dst(arb_io_in_1_bits_header_dst),
    .io_in_1_bits_payload_addr_beat(arb_io_in_1_bits_payload_addr_beat),
    .io_in_1_bits_payload_addr_block(arb_io_in_1_bits_payload_addr_block),
    .io_in_1_bits_payload_client_xact_id(arb_io_in_1_bits_payload_client_xact_id),
    .io_in_1_bits_payload_voluntary(arb_io_in_1_bits_payload_voluntary),
    .io_in_1_bits_payload_r_type(arb_io_in_1_bits_payload_r_type),
    .io_in_1_bits_payload_data(arb_io_in_1_bits_payload_data),
    .io_in_2_ready(arb_io_in_2_ready),
    .io_in_2_valid(arb_io_in_2_valid),
    .io_in_2_bits_header_src(arb_io_in_2_bits_header_src),
    .io_in_2_bits_header_dst(arb_io_in_2_bits_header_dst),
    .io_in_2_bits_payload_addr_beat(arb_io_in_2_bits_payload_addr_beat),
    .io_in_2_bits_payload_addr_block(arb_io_in_2_bits_payload_addr_block),
    .io_in_2_bits_payload_client_xact_id(arb_io_in_2_bits_payload_client_xact_id),
    .io_in_2_bits_payload_voluntary(arb_io_in_2_bits_payload_voluntary),
    .io_in_2_bits_payload_r_type(arb_io_in_2_bits_payload_r_type),
    .io_in_2_bits_payload_data(arb_io_in_2_bits_payload_data),
    .io_in_3_ready(arb_io_in_3_ready),
    .io_in_3_valid(arb_io_in_3_valid),
    .io_in_3_bits_header_src(arb_io_in_3_bits_header_src),
    .io_in_3_bits_header_dst(arb_io_in_3_bits_header_dst),
    .io_in_3_bits_payload_addr_beat(arb_io_in_3_bits_payload_addr_beat),
    .io_in_3_bits_payload_addr_block(arb_io_in_3_bits_payload_addr_block),
    .io_in_3_bits_payload_client_xact_id(arb_io_in_3_bits_payload_client_xact_id),
    .io_in_3_bits_payload_voluntary(arb_io_in_3_bits_payload_voluntary),
    .io_in_3_bits_payload_r_type(arb_io_in_3_bits_payload_r_type),
    .io_in_3_bits_payload_data(arb_io_in_3_bits_payload_data),
    .io_out_ready(arb_io_out_ready),
    .io_out_valid(arb_io_out_valid),
    .io_out_bits_header_src(arb_io_out_bits_header_src),
    .io_out_bits_header_dst(arb_io_out_bits_header_dst),
    .io_out_bits_payload_addr_beat(arb_io_out_bits_payload_addr_beat),
    .io_out_bits_payload_addr_block(arb_io_out_bits_payload_addr_block),
    .io_out_bits_payload_client_xact_id(arb_io_out_bits_payload_client_xact_id),
    .io_out_bits_payload_voluntary(arb_io_out_bits_payload_voluntary),
    .io_out_bits_payload_r_type(arb_io_out_bits_payload_r_type),
    .io_out_bits_payload_data(arb_io_out_bits_payload_data),
    .io_chosen(arb_io_chosen)
  );
  assign io_in_0_ready = arb_io_in_0_ready;
  assign io_in_1_ready = arb_io_in_1_ready;
  assign io_in_2_ready = arb_io_in_2_ready;
  assign io_in_3_ready = arb_io_in_3_ready;
  assign io_out_0_valid = T_1484;
  assign io_out_0_bits_header_src = arb_io_out_bits_header_src;
  assign io_out_0_bits_header_dst = arb_io_out_bits_header_dst;
  assign io_out_0_bits_payload_addr_beat = arb_io_out_bits_payload_addr_beat;
  assign io_out_0_bits_payload_addr_block = arb_io_out_bits_payload_addr_block;
  assign io_out_0_bits_payload_client_xact_id = arb_io_out_bits_payload_client_xact_id;
  assign io_out_0_bits_payload_voluntary = arb_io_out_bits_payload_voluntary;
  assign io_out_0_bits_payload_r_type = arb_io_out_bits_payload_r_type;
  assign io_out_0_bits_payload_data = arb_io_out_bits_payload_data;
  assign io_out_1_valid = T_1487;
  assign io_out_1_bits_header_src = arb_io_out_bits_header_src;
  assign io_out_1_bits_header_dst = arb_io_out_bits_header_dst;
  assign io_out_1_bits_payload_addr_beat = arb_io_out_bits_payload_addr_beat;
  assign io_out_1_bits_payload_addr_block = arb_io_out_bits_payload_addr_block;
  assign io_out_1_bits_payload_client_xact_id = arb_io_out_bits_payload_client_xact_id;
  assign io_out_1_bits_payload_voluntary = arb_io_out_bits_payload_voluntary;
  assign io_out_1_bits_payload_r_type = arb_io_out_bits_payload_r_type;
  assign io_out_1_bits_payload_data = arb_io_out_bits_payload_data;
  assign io_out_2_valid = T_1490;
  assign io_out_2_bits_header_src = arb_io_out_bits_header_src;
  assign io_out_2_bits_header_dst = arb_io_out_bits_header_dst;
  assign io_out_2_bits_payload_addr_beat = arb_io_out_bits_payload_addr_beat;
  assign io_out_2_bits_payload_addr_block = arb_io_out_bits_payload_addr_block;
  assign io_out_2_bits_payload_client_xact_id = arb_io_out_bits_payload_client_xact_id;
  assign io_out_2_bits_payload_voluntary = arb_io_out_bits_payload_voluntary;
  assign io_out_2_bits_payload_r_type = arb_io_out_bits_payload_r_type;
  assign io_out_2_bits_payload_data = arb_io_out_bits_payload_data;
  assign io_out_3_valid = T_1493;
  assign io_out_3_bits_header_src = arb_io_out_bits_header_src;
  assign io_out_3_bits_header_dst = arb_io_out_bits_header_dst;
  assign io_out_3_bits_payload_addr_beat = arb_io_out_bits_payload_addr_beat;
  assign io_out_3_bits_payload_addr_block = arb_io_out_bits_payload_addr_block;
  assign io_out_3_bits_payload_client_xact_id = arb_io_out_bits_payload_client_xact_id;
  assign io_out_3_bits_payload_voluntary = arb_io_out_bits_payload_voluntary;
  assign io_out_3_bits_payload_r_type = arb_io_out_bits_payload_r_type;
  assign io_out_3_bits_payload_data = arb_io_out_bits_payload_data;
  assign arb_clk = clk;
  assign arb_reset = reset;
  assign arb_io_in_0_valid = io_in_0_valid;
  assign arb_io_in_0_bits_header_src = io_in_0_bits_header_src;
  assign arb_io_in_0_bits_header_dst = io_in_0_bits_header_dst;
  assign arb_io_in_0_bits_payload_addr_beat = io_in_0_bits_payload_addr_beat;
  assign arb_io_in_0_bits_payload_addr_block = io_in_0_bits_payload_addr_block;
  assign arb_io_in_0_bits_payload_client_xact_id = io_in_0_bits_payload_client_xact_id;
  assign arb_io_in_0_bits_payload_voluntary = io_in_0_bits_payload_voluntary;
  assign arb_io_in_0_bits_payload_r_type = io_in_0_bits_payload_r_type;
  assign arb_io_in_0_bits_payload_data = io_in_0_bits_payload_data;
  assign arb_io_in_1_valid = io_in_1_valid;
  assign arb_io_in_1_bits_header_src = io_in_1_bits_header_src;
  assign arb_io_in_1_bits_header_dst = io_in_1_bits_header_dst;
  assign arb_io_in_1_bits_payload_addr_beat = io_in_1_bits_payload_addr_beat;
  assign arb_io_in_1_bits_payload_addr_block = io_in_1_bits_payload_addr_block;
  assign arb_io_in_1_bits_payload_client_xact_id = io_in_1_bits_payload_client_xact_id;
  assign arb_io_in_1_bits_payload_voluntary = io_in_1_bits_payload_voluntary;
  assign arb_io_in_1_bits_payload_r_type = io_in_1_bits_payload_r_type;
  assign arb_io_in_1_bits_payload_data = io_in_1_bits_payload_data;
  assign arb_io_in_2_valid = io_in_2_valid;
  assign arb_io_in_2_bits_header_src = io_in_2_bits_header_src;
  assign arb_io_in_2_bits_header_dst = io_in_2_bits_header_dst;
  assign arb_io_in_2_bits_payload_addr_beat = io_in_2_bits_payload_addr_beat;
  assign arb_io_in_2_bits_payload_addr_block = io_in_2_bits_payload_addr_block;
  assign arb_io_in_2_bits_payload_client_xact_id = io_in_2_bits_payload_client_xact_id;
  assign arb_io_in_2_bits_payload_voluntary = io_in_2_bits_payload_voluntary;
  assign arb_io_in_2_bits_payload_r_type = io_in_2_bits_payload_r_type;
  assign arb_io_in_2_bits_payload_data = io_in_2_bits_payload_data;
  assign arb_io_in_3_valid = io_in_3_valid;
  assign arb_io_in_3_bits_header_src = io_in_3_bits_header_src;
  assign arb_io_in_3_bits_header_dst = io_in_3_bits_header_dst;
  assign arb_io_in_3_bits_payload_addr_beat = io_in_3_bits_payload_addr_beat;
  assign arb_io_in_3_bits_payload_addr_block = io_in_3_bits_payload_addr_block;
  assign arb_io_in_3_bits_payload_client_xact_id = io_in_3_bits_payload_client_xact_id;
  assign arb_io_in_3_bits_payload_voluntary = io_in_3_bits_payload_voluntary;
  assign arb_io_in_3_bits_payload_r_type = io_in_3_bits_payload_r_type;
  assign arb_io_in_3_bits_payload_data = io_in_3_bits_payload_data;
  assign arb_io_out_ready = GEN_0;
  assign GEN_0 = GEN_3;
  assign GEN_1 = 2'h1 == arb_io_out_bits_header_dst ? io_out_1_ready : io_out_0_ready;
  assign GEN_2 = 2'h2 == arb_io_out_bits_header_dst ? io_out_2_ready : GEN_1;
  assign GEN_3 = 2'h3 == arb_io_out_bits_header_dst ? io_out_3_ready : GEN_2;
  assign T_1483 = arb_io_out_bits_header_dst == 2'h0;
  assign T_1484 = arb_io_out_valid & T_1483;
  assign T_1486 = arb_io_out_bits_header_dst == 2'h1;
  assign T_1487 = arb_io_out_valid & T_1486;
  assign T_1489 = arb_io_out_bits_header_dst == 2'h2;
  assign T_1490 = arb_io_out_valid & T_1489;
  assign T_1492 = arb_io_out_bits_header_dst == 2'h3;
  assign T_1493 = arb_io_out_valid & T_1492;
endmodule
