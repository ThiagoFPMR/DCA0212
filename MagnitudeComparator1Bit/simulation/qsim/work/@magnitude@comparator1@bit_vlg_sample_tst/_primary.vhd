library verilog;
use verilog.vl_types.all;
entity MagnitudeComparator1Bit_vlg_sample_tst is
    port(
        A               : in     vl_logic;
        B               : in     vl_logic;
        in_eq           : in     vl_logic;
        in_gt           : in     vl_logic;
        in_lt           : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end MagnitudeComparator1Bit_vlg_sample_tst;
