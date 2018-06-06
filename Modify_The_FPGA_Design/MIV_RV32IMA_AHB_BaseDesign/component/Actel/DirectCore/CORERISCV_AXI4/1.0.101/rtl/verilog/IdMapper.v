module IdMapper(
  input   clk,
  input   reset,
  input   io_req_valid,
  output  io_req_ready,
  input  [1:0] io_req_in_id,
  output [4:0] io_req_out_id,
  input   io_resp_valid,
  output  io_resp_matches,
  input  [4:0] io_resp_out_id,
  output [1:0] io_resp_in_id
);
  assign io_req_ready = 1'h1;
  assign io_req_out_id = {{3'd0}, io_req_in_id};
  assign io_resp_matches = 1'h1;
  assign io_resp_in_id = io_resp_out_id[1:0];
endmodule
