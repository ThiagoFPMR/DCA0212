library verilog;
use verilog.vl_types.all;
entity MagnitudeComparator4Bit_vlg_check_tst is
    port(
        AeqB            : in     vl_logic;
        AgtB            : in     vl_logic;
        AltB            : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end MagnitudeComparator4Bit_vlg_check_tst;
