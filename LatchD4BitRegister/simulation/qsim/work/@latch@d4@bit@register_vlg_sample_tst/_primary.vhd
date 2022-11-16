library verilog;
use verilog.vl_types.all;
entity LatchD4BitRegister_vlg_sample_tst is
    port(
        clk             : in     vl_logic;
        I0              : in     vl_logic;
        I1              : in     vl_logic;
        I2              : in     vl_logic;
        I3              : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end LatchD4BitRegister_vlg_sample_tst;
