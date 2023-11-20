library verilog;
use verilog.vl_types.all;
entity main_vlg_check_tst is
    port(
        DATA_OUT        : in     vl_logic_vector(15 downto 0);
        F               : in     vl_logic_vector(15 downto 0);
        \out\           : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end main_vlg_check_tst;
