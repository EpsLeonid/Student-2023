library verilog;
use verilog.vl_types.all;
entity main is
    port(
        A               : in     vl_logic_vector(7 downto 0);
        B               : in     vl_logic_vector(7 downto 0);
        C               : in     vl_logic_vector(7 downto 0);
        \D\             : in     vl_logic_vector(7 downto 0);
        E               : in     vl_logic_vector(7 downto 0);
        F               : out    vl_logic_vector(15 downto 0);
        d               : in     vl_logic;
        clk             : in     vl_logic;
        \out\           : out    vl_logic;
        DATA_OUT        : out    vl_logic_vector(15 downto 0)
    );
end main;
