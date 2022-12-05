library verilog;
use verilog.vl_types.all;
entity MagnitudeComparator1Bit_vlg_check_tst is
    port(
        out_eq          : in     vl_logic;
        out_gt          : in     vl_logic;
        out_lt          : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end MagnitudeComparator1Bit_vlg_check_tst;
