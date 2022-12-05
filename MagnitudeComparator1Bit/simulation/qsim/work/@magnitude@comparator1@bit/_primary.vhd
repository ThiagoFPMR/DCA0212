library verilog;
use verilog.vl_types.all;
entity MagnitudeComparator1Bit is
    port(
        A               : in     vl_logic;
        B               : in     vl_logic;
        in_gt           : in     vl_logic;
        in_eq           : in     vl_logic;
        in_lt           : in     vl_logic;
        out_gt          : out    vl_logic;
        out_eq          : out    vl_logic;
        out_lt          : out    vl_logic
    );
end MagnitudeComparator1Bit;
