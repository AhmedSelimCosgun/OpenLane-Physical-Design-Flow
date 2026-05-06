# Design Name
set ::env(DESIGN_NAME) "counter_4bit"

# Point to your Verilog source file
set ::env(VERILOG_FILES) [glob $::env(DESIGN_DIR)/src/*.v]

# Clock Configuration (10ns period = 100MHz target speed)
set ::env(CLOCK_PORT) "clk"
set ::env(CLOCK_PERIOD) 10.0

# Floorplanning Strategy
# We are forcing a tiny 50um x 50um die size for this simple design
set ::env(FP_SIZING) absolute
set ::env(DIE_AREA) "0 0 50 50"

# Target Placement Density (50% utilization of the core area)
set ::env(PL_TARGET_DENSITY) 0.50
