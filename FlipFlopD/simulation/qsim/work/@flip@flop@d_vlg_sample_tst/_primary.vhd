library verilog;
use verilog.vl_types.all;
entity FlipFlopD_vlg_sample_tst is
    port(
        c               : in     vl_logic;
        D               : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end FlipFlopD_vlg_sample_tst;
