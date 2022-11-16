library verilog;
use verilog.vl_types.all;
entity FlipFlopD4BitRegister is
    port(
        I3              : in     vl_logic;
        I2              : in     vl_logic;
        I1              : in     vl_logic;
        I0              : in     vl_logic;
        clk             : in     vl_logic;
        Q3              : out    vl_logic;
        Q2              : out    vl_logic;
        Q1              : out    vl_logic;
        Q0              : out    vl_logic
    );
end FlipFlopD4BitRegister;
