library verilog;
use verilog.vl_types.all;
entity MagnitudeComparator8Bit is
    port(
        A7              : in     vl_logic;
        A6              : in     vl_logic;
        A5              : in     vl_logic;
        A4              : in     vl_logic;
        A3              : in     vl_logic;
        A2              : in     vl_logic;
        A1              : in     vl_logic;
        A0              : in     vl_logic;
        B7              : in     vl_logic;
        B6              : in     vl_logic;
        B5              : in     vl_logic;
        B4              : in     vl_logic;
        B3              : in     vl_logic;
        B2              : in     vl_logic;
        B1              : in     vl_logic;
        B0              : in     vl_logic;
        AgtB            : out    vl_logic;
        AeqB            : out    vl_logic;
        AltB            : out    vl_logic
    );
end MagnitudeComparator8Bit;
