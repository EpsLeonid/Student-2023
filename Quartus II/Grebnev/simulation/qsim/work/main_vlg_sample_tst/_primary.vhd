library verilog;
use verilog.vl_types.all;
entity main_vlg_sample_tst is
    port(
        A               : in     vl_logic_vector(7 downto 0);
        B               : in     vl_logic_vector(7 downto 0);
        C               : in     vl_logic_vector(7 downto 0);
        \D\             : in     vl_logic_vector(7 downto 0);
        E               : in     vl_logic_vector(7 downto 0);
        clk             : in     vl_logic;
        d               : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end main_vlg_sample_tst;
