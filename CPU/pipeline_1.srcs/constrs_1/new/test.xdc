
set_property    PACKAGE_PIN     W5          [get_ports CLK]
    set_property    IOSTANDARD      LVCMOS33    [get_ports CLK]
    create_clock    -add -name      sys_clk_pin -period 12.23 -waveform {0 5} [get_ports CLK]

## Switch
## a
set_property PACKAGE_PIN V17 [get_ports {reset}]
    set_property IOSTANDARD LVCMOS33 [get_ports {reset}]
#set_property PACKAGE_PIN V16 [get_ports {a[1]}]
#    set_property IOSTANDARD LVCMOS33 [get_ports {a[1]}]
#set_property PACKAGE_PIN W16 [get_ports {a[2]}]
#    set_property IOSTANDARD LVCMOS33 [get_ports {a[2]}]
#set_property PACKAGE_PIN W17 [get_ports {a[3]}]
#    set_property IOSTANDARD LVCMOS33 [get_ports {a[3]}]

## b
#set_property PACKAGE_PIN W15 [get_ports {b[0]}]
#    set_property IOSTANDARD LVCMOS33 [get_ports {b[0]}]
#set_property PACKAGE_PIN V15 [get_ports {b[1]}]
#    set_property IOSTANDARD LVCMOS33 [get_ports {b[1]}]
#set_property PACKAGE_PIN W14 [get_ports {b[2]}]
#    set_property IOSTANDARD LVCMOS33 [get_ports {b[2]}]
#set_property PACKAGE_PIN W13 [get_ports {b[3]}]
#    set_property IOSTANDARD LVCMOS33 [get_ports {b[3]}]

### en
#set_property PACKAGE_PIN R2 [get_ports en]
#    set_property IOSTANDARD LVCMOS33 [get_ports en]


## LEDs

set_property PACKAGE_PIN U16 [get_ports {out}]
    set_property IOSTANDARD LVCMOS33 [get_ports {out}]
#set_property PACKAGE_PIN E19 [get_ports {sum[1]}]
#    set_property IOSTANDARD LVCMOS33 [get_ports {sum[1]}]
#set_property PACKAGE_PIN U19 [get_ports {sum[2]}]
#    set_property IOSTANDARD LVCMOS33 [get_ports {sum[2]}]
#set_property PACKAGE_PIN V19 [get_ports {sum[3]}]
#    set_property IOSTANDARD LVCMOS33 [get_ports {sum[3]}]
#set_property PACKAGE_PIN W18 [get_ports co]
#    set_property IOSTANDARD LVCMOS33 [get_ports co]