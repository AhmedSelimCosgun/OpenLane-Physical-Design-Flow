

# Target Placement Density (50% utilization of the core area)
set ::env(PL_TARGET_DENSITY) 0.50



# Design Name
set ::env(DESIGN_NAME) "counter_4bit"

# Point to your Verilog source file
set ::env(VERILOG_FILES) [glob $::env(DESIGN_DIR)/src/*.v]

# Clock Configuration (10ns period = 100MHz target speed)
set ::env(CLOCK_PORT) "clk"
set ::env(CLOCK_PERIOD) 10.0

#The Floor planning

# Format: "LowerLeft_X LowerLeft_Y UpperRight_X UpperRight_Y" (in micrometers)
set ::env(FP_SIZING) absolute
set ::env(DIE_AREA) "0 0 100 50"

# 2. Add a Power Ring! 
# This tells the PDN generator to draw a thick, continuous metal ring of VDD and VSS around the entire core.
set ::env(FP_PDN_CORE_RING) 1

# 3. Pin Placement Setup
# Forcing the input/output pins to be spread out evenly across the bottom and top of the chip.
set ::env(FP_PIN_ORDER_CFG) $::env(DESIGN_DIR)/pin_order.cfg