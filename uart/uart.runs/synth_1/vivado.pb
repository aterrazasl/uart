
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2$
create_project: 2default:default2
00:00:052default:default2
00:00:062default:default2
1436.1212default:default2
0.0002default:defaultZ17-268h px? 
?
Command: %s
1870*	planAhead2?
nread_checkpoint -auto_incremental -incremental C:/Git/uart/uart/uart.srcs/utils_1/imports/synth_1/uart_top.dcp2default:defaultZ12-2866h px? 
?
;Read reference checkpoint from %s for incremental synthesis3154*	planAhead2S
?C:/Git/uart/uart/uart.srcs/utils_1/imports/synth_1/uart_top.dcp2default:defaultZ12-5825h px? 
T
-Please ensure there are no constraint changes3725*	planAheadZ12-7989h px? 
u
Command: %s
53*	vivadotcl2D
0synth_design -top uart_top -part xc7z010clg400-12default:defaultZ4-113h px? 
:
Starting synth_design
149*	vivadotclZ4-321h px? 
?
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2default:default2
xc7z0102default:defaultZ17-347h px? 
?
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2default:default2
xc7z0102default:defaultZ17-349h px? 
V
Loading part %s157*device2#
xc7z010clg400-12default:defaultZ21-403h px? 
?
[Reference run did not run incremental synthesis because %s; reverting to default synthesis
2138*designutils2+
the design is too small2default:defaultZ20-4072h px? 
?
?Flow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}2229*designutilsZ20-4379h px? 
?
HMultithreading enabled for synth_design using a maximum of %s processes.4828*oasys2
22default:defaultZ8-7079h px? 
a
?Launching helper process for spawning children vivado processes4827*oasysZ8-7078h px? 
`
#Helper process launched with PID %s4824*oasys2
110882default:defaultZ8-7075h px? 
?
%s*synth2?
wStarting RTL Elaboration : Time (s): cpu = 00:00:07 ; elapsed = 00:00:07 . Memory (MB): peak = 1436.121 ; gain = 0.000
2default:defaulth px? 
?
synthesizing module '%s'638*oasys2
uart_top2default:default2K
5C:/Git/uart/uart/uart.srcs/sources_1/new/uart_top.vhd2default:default2
152default:default8@Z8-638h px? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
uart2default:default2M
9C:/Git/uart/uart/uart.srcs/sources_1/imports/new/uart.vhd2default:default2
82default:default2
	UART_COMP2default:default2
uart2default:default2K
5C:/Git/uart/uart/uart.srcs/sources_1/new/uart_top.vhd2default:default2
982default:default8@Z8-3491h px? 
?
synthesizing module '%s'638*oasys2
uart2default:default2O
9C:/Git/uart/uart/uart.srcs/sources_1/imports/new/uart.vhd2default:default2
262default:default8@Z8-638h px? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
fifo2default:default2E
1C:/Git/uart/uart/uart.srcs/sources_1/new/fifo.vhd2default:default2
72default:default2 
FIFO_TX_COMP2default:default2
fifo2default:default2O
9C:/Git/uart/uart/uart.srcs/sources_1/imports/new/uart.vhd2default:default2
492default:default8@Z8-3491h px? 
?
synthesizing module '%s'638*oasys2
fifo2default:default2G
1C:/Git/uart/uart/uart.srcs/sources_1/new/fifo.vhd2default:default2
222default:default8@Z8-638h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2
fifo2default:default2
12default:default2
12default:default2G
1C:/Git/uart/uart/uart.srcs/sources_1/new/fifo.vhd2default:default2
222default:default8@Z8-256h px? 
l
%s
*synth2T
@	Parameter CLOCK_FREQUENCY bound to: 125000000 - type: integer 
2default:defaulth p
x
? 
V
%s
*synth2>
*	Parameter PARITY_ENABLED bound to: 1'b0 
2default:defaulth p
x
? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
uart_tx2default:default2P
<C:/Git/uart/uart/uart.srcs/sources_1/imports/new/uart_tx.vhd2default:default2
102default:default2 
UART_TX_COMP2default:default2
uart_tx2default:default2O
9C:/Git/uart/uart/uart.srcs/sources_1/imports/new/uart.vhd2default:default2
632default:default8@Z8-3491h px? 
?
synthesizing module '%s'638*oasys2
uart_tx2default:default2R
<C:/Git/uart/uart/uart.srcs/sources_1/imports/new/uart_tx.vhd2default:default2
302default:default8@Z8-638h px? 
b
%s
*synth2J
6	Parameter BAUDRATE bound to: 115200 - type: integer 
2default:defaulth p
x
? 
l
%s
*synth2T
@	Parameter CLOCK_FREQUENCY bound to: 125000000 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter DATA_WIDTH bound to: 8 - type: integer 
2default:defaulth p
x
? 
R
%s
*synth2:
&	Parameter STOP_STATE bound to: 1'b1 
2default:defaulth p
x
? 
S
%s
*synth2;
'	Parameter START_STATE bound to: 1'b0 
2default:defaulth p
x
? 
V
%s
*synth2>
*	Parameter PARITY_ENABLED bound to: 1'b0 
2default:defaulth p
x
? 
?
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2#
data_count_done2default:default2R
<C:/Git/uart/uart/uart.srcs/sources_1/imports/new/uart_tx.vhd2default:default2
1112default:default8@Z8-614h px? 
?
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2

next_state2default:default2R
<C:/Git/uart/uart/uart.srcs/sources_1/imports/new/uart_tx.vhd2default:default2
1112default:default8@Z8-614h px? 
?
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2
data_buffer2default:default2R
<C:/Git/uart/uart/uart.srcs/sources_1/imports/new/uart_tx.vhd2default:default2
1702default:default8@Z8-614h px? 
?
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2
	data_in_i2default:default2R
<C:/Git/uart/uart/uart.srcs/sources_1/imports/new/uart_tx.vhd2default:default2
1702default:default8@Z8-614h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2
uart_tx2default:default2
22default:default2
12default:default2R
<C:/Git/uart/uart/uart.srcs/sources_1/imports/new/uart_tx.vhd2default:default2
302default:default8@Z8-256h px? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
fifo2default:default2E
1C:/Git/uart/uart/uart.srcs/sources_1/new/fifo.vhd2default:default2
72default:default2 
FIFO_RX_COMP2default:default2
fifo2default:default2O
9C:/Git/uart/uart/uart.srcs/sources_1/imports/new/uart.vhd2default:default2
782default:default8@Z8-3491h px? 
l
%s
*synth2T
@	Parameter CLOCK_FREQUENCY bound to: 125000000 - type: integer 
2default:defaulth p
x
? 
V
%s
*synth2>
*	Parameter PARITY_ENABLED bound to: 1'b0 
2default:defaulth p
x
? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
uart_rx2default:default2H
4C:/Git/uart/uart/uart.srcs/sources_1/new/uart_rx.vhd2default:default2
62default:default2 
UART_RX_COMP2default:default2
uart_rx2default:default2O
9C:/Git/uart/uart/uart.srcs/sources_1/imports/new/uart.vhd2default:default2
932default:default8@Z8-3491h px? 
?
synthesizing module '%s'638*oasys2
uart_rx2default:default2J
4C:/Git/uart/uart/uart.srcs/sources_1/new/uart_rx.vhd2default:default2
252default:default8@Z8-638h px? 
b
%s
*synth2J
6	Parameter BAUDRATE bound to: 115200 - type: integer 
2default:defaulth p
x
? 
l
%s
*synth2T
@	Parameter CLOCK_FREQUENCY bound to: 125000000 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter DATA_WIDTH bound to: 8 - type: integer 
2default:defaulth p
x
? 
R
%s
*synth2:
&	Parameter STOP_STATE bound to: 1'b1 
2default:defaulth p
x
? 
S
%s
*synth2;
'	Parameter START_STATE bound to: 1'b0 
2default:defaulth p
x
? 
V
%s
*synth2>
*	Parameter PARITY_ENABLED bound to: 1'b0 
2default:defaulth p
x
? 
?
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2
rx_line_dly2default:default2J
4C:/Git/uart/uart/uart.srcs/sources_1/new/uart_rx.vhd2default:default2
1052default:default8@Z8-614h px? 
?
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2

next_state2default:default2J
4C:/Git/uart/uart/uart.srcs/sources_1/new/uart_rx.vhd2default:default2
1052default:default8@Z8-614h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2
uart_rx2default:default2
32default:default2
12default:default2J
4C:/Git/uart/uart/uart.srcs/sources_1/new/uart_rx.vhd2default:default2
252default:default8@Z8-256h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2
uart2default:default2
42default:default2
12default:default2O
9C:/Git/uart/uart/uart.srcs/sources_1/imports/new/uart.vhd2default:default2
262default:default8@Z8-256h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2
uart_top2default:default2
52default:default2
12default:default2K
5C:/Git/uart/uart/uart.srcs/sources_1/new/uart_top.vhd2default:default2
152default:default8@Z8-256h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
ready2default:default2
uart_rx2default:defaultZ8-7129h px? 
?
%s*synth2?
wFinished RTL Elaboration : Time (s): cpu = 00:00:08 ; elapsed = 00:00:08 . Memory (MB): peak = 1436.121 ; gain = 0.000
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Handling Custom Attributes : Time (s): cpu = 00:00:09 ; elapsed = 00:00:09 . Memory (MB): peak = 1436.121 ; gain = 0.000
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:09 ; elapsed = 00:00:09 . Memory (MB): peak = 1436.121 ; gain = 0.000
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0092default:default2
1436.1212default:default2
0.0002default:defaultZ17-268h px? 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px? 
>

Processing XDC Constraints
244*projectZ1-262h px? 
=
Initializing timing engine
348*projectZ1-569h px? 
?
Parsing XDC File [%s]
179*designutils2O
9C:/Git/uart/uart/uart.srcs/constrs_1/imports/new/Main.xdc2default:default8Z20-179h px? 
?
No ports matched '%s'.
584*	planAhead2
shoot2default:default2O
9C:/Git/uart/uart/uart.srcs/constrs_1/imports/new/Main.xdc2default:default2
132default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2O
9C:/Git/uart/uart/uart.srcs/constrs_1/imports/new/Main.xdc2default:default2
132default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2!
player1_start2default:default2O
9C:/Git/uart/uart/uart.srcs/constrs_1/imports/new/Main.xdc2default:default2
142default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2O
9C:/Git/uart/uart/uart.srcs/constrs_1/imports/new/Main.xdc2default:default2
142default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
coin_switch2default:default2O
9C:/Git/uart/uart/uart.srcs/constrs_1/imports/new/Main.xdc2default:default2
152default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2O
9C:/Git/uart/uart/uart.srcs/constrs_1/imports/new/Main.xdc2default:default2
152default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
test_switch2default:default2O
9C:/Git/uart/uart/uart.srcs/constrs_1/imports/new/Main.xdc2default:default2
162default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2O
9C:/Git/uart/uart/uart.srcs/constrs_1/imports/new/Main.xdc2default:default2
162default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
right2default:default2O
9C:/Git/uart/uart/uart.srcs/constrs_1/imports/new/Main.xdc2default:default2
2052default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2O
9C:/Git/uart/uart/uart.srcs/constrs_1/imports/new/Main.xdc2default:default2
2052default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
right2default:default2O
9C:/Git/uart/uart/uart.srcs/constrs_1/imports/new/Main.xdc2default:default2
2062default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2O
9C:/Git/uart/uart/uart.srcs/constrs_1/imports/new/Main.xdc2default:default2
2062default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
down2default:default2O
9C:/Git/uart/uart/uart.srcs/constrs_1/imports/new/Main.xdc2default:default2
2072default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2O
9C:/Git/uart/uart/uart.srcs/constrs_1/imports/new/Main.xdc2default:default2
2072default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
down2default:default2O
9C:/Git/uart/uart/uart.srcs/constrs_1/imports/new/Main.xdc2default:default2
2082default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2O
9C:/Git/uart/uart/uart.srcs/constrs_1/imports/new/Main.xdc2default:default2
2082default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
up2default:default2O
9C:/Git/uart/uart/uart.srcs/constrs_1/imports/new/Main.xdc2default:default2
2092default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2O
9C:/Git/uart/uart/uart.srcs/constrs_1/imports/new/Main.xdc2default:default2
2092default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
up2default:default2O
9C:/Git/uart/uart/uart.srcs/constrs_1/imports/new/Main.xdc2default:default2
2102default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2O
9C:/Git/uart/uart/uart.srcs/constrs_1/imports/new/Main.xdc2default:default2
2102default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
left2default:default2O
9C:/Git/uart/uart/uart.srcs/constrs_1/imports/new/Main.xdc2default:default2
2112default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2O
9C:/Git/uart/uart/uart.srcs/constrs_1/imports/new/Main.xdc2default:default2
2112default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
left2default:default2O
9C:/Git/uart/uart/uart.srcs/constrs_1/imports/new/Main.xdc2default:default2
2122default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2O
9C:/Git/uart/uart/uart.srcs/constrs_1/imports/new/Main.xdc2default:default2
2122default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
h_sync2default:default2O
9C:/Git/uart/uart/uart.srcs/constrs_1/imports/new/Main.xdc2default:default2
2222default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2O
9C:/Git/uart/uart/uart.srcs/constrs_1/imports/new/Main.xdc2default:default2
2222default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
h_sync2default:default2O
9C:/Git/uart/uart/uart.srcs/constrs_1/imports/new/Main.xdc2default:default2
2232default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2O
9C:/Git/uart/uart/uart.srcs/constrs_1/imports/new/Main.xdc2default:default2
2232default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
v_sync2default:default2O
9C:/Git/uart/uart/uart.srcs/constrs_1/imports/new/Main.xdc2default:default2
2242default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2O
9C:/Git/uart/uart/uart.srcs/constrs_1/imports/new/Main.xdc2default:default2
2242default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
v_sync2default:default2O
9C:/Git/uart/uart/uart.srcs/constrs_1/imports/new/Main.xdc2default:default2
2252default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2O
9C:/Git/uart/uart/uart.srcs/constrs_1/imports/new/Main.xdc2default:default2
2252default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
red[0]2default:default2O
9C:/Git/uart/uart/uart.srcs/constrs_1/imports/new/Main.xdc2default:default2
2262default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2O
9C:/Git/uart/uart/uart.srcs/constrs_1/imports/new/Main.xdc2default:default2
2262default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
red[1]2default:default2O
9C:/Git/uart/uart/uart.srcs/constrs_1/imports/new/Main.xdc2default:default2
2272default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2O
9C:/Git/uart/uart/uart.srcs/constrs_1/imports/new/Main.xdc2default:default2
2272default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
red[2]2default:default2O
9C:/Git/uart/uart/uart.srcs/constrs_1/imports/new/Main.xdc2default:default2
2282default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2O
9C:/Git/uart/uart/uart.srcs/constrs_1/imports/new/Main.xdc2default:default2
2282default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
red[3]2default:default2O
9C:/Git/uart/uart/uart.srcs/constrs_1/imports/new/Main.xdc2default:default2
2292default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2O
9C:/Git/uart/uart/uart.srcs/constrs_1/imports/new/Main.xdc2default:default2
2292default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
red[4]2default:default2O
9C:/Git/uart/uart/uart.srcs/constrs_1/imports/new/Main.xdc2default:default2
2302default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2O
9C:/Git/uart/uart/uart.srcs/constrs_1/imports/new/Main.xdc2default:default2
2302default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
red[4]2default:default2O
9C:/Git/uart/uart/uart.srcs/constrs_1/imports/new/Main.xdc2default:default2
2312default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2O
9C:/Git/uart/uart/uart.srcs/constrs_1/imports/new/Main.xdc2default:default2
2312default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
red[3]2default:default2O
9C:/Git/uart/uart/uart.srcs/constrs_1/imports/new/Main.xdc2default:default2
2322default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2O
9C:/Git/uart/uart/uart.srcs/constrs_1/imports/new/Main.xdc2default:default2
2322default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
red[2]2default:default2O
9C:/Git/uart/uart/uart.srcs/constrs_1/imports/new/Main.xdc2default:default2
2332default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2O
9C:/Git/uart/uart/uart.srcs/constrs_1/imports/new/Main.xdc2default:default2
2332default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
red[1]2default:default2O
9C:/Git/uart/uart/uart.srcs/constrs_1/imports/new/Main.xdc2default:default2
2342default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2O
9C:/Git/uart/uart/uart.srcs/constrs_1/imports/new/Main.xdc2default:default2
2342default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
red[0]2default:default2O
9C:/Git/uart/uart/uart.srcs/constrs_1/imports/new/Main.xdc2default:default2
2352default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2O
9C:/Git/uart/uart/uart.srcs/constrs_1/imports/new/Main.xdc2default:default2
2352default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
green[0]2default:default2O
9C:/Git/uart/uart/uart.srcs/constrs_1/imports/new/Main.xdc2default:default2
2362default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2O
9C:/Git/uart/uart/uart.srcs/constrs_1/imports/new/Main.xdc2default:default2
2362default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
green[1]2default:default2O
9C:/Git/uart/uart/uart.srcs/constrs_1/imports/new/Main.xdc2default:default2
2372default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2O
9C:/Git/uart/uart/uart.srcs/constrs_1/imports/new/Main.xdc2default:default2
2372default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
green[2]2default:default2O
9C:/Git/uart/uart/uart.srcs/constrs_1/imports/new/Main.xdc2default:default2
2382default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2O
9C:/Git/uart/uart/uart.srcs/constrs_1/imports/new/Main.xdc2default:default2
2382default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
green[3]2default:default2O
9C:/Git/uart/uart/uart.srcs/constrs_1/imports/new/Main.xdc2default:default2
2392default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2O
9C:/Git/uart/uart/uart.srcs/constrs_1/imports/new/Main.xdc2default:default2
2392default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
green[4]2default:default2O
9C:/Git/uart/uart/uart.srcs/constrs_1/imports/new/Main.xdc2default:default2
2402default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2O
9C:/Git/uart/uart/uart.srcs/constrs_1/imports/new/Main.xdc2default:default2
2402default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
green[5]2default:default2O
9C:/Git/uart/uart/uart.srcs/constrs_1/imports/new/Main.xdc2default:default2
2412default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2O
9C:/Git/uart/uart/uart.srcs/constrs_1/imports/new/Main.xdc2default:default2
2412default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
green[5]2default:default2O
9C:/Git/uart/uart/uart.srcs/constrs_1/imports/new/Main.xdc2default:default2
2422default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2O
9C:/Git/uart/uart/uart.srcs/constrs_1/imports/new/Main.xdc2default:default2
2422default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
green[4]2default:default2O
9C:/Git/uart/uart/uart.srcs/constrs_1/imports/new/Main.xdc2default:default2
2432default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2O
9C:/Git/uart/uart/uart.srcs/constrs_1/imports/new/Main.xdc2default:default2
2432default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
green[3]2default:default2O
9C:/Git/uart/uart/uart.srcs/constrs_1/imports/new/Main.xdc2default:default2
2442default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2O
9C:/Git/uart/uart/uart.srcs/constrs_1/imports/new/Main.xdc2default:default2
2442default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
green[2]2default:default2O
9C:/Git/uart/uart/uart.srcs/constrs_1/imports/new/Main.xdc2default:default2
2452default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2O
9C:/Git/uart/uart/uart.srcs/constrs_1/imports/new/Main.xdc2default:default2
2452default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
green[1]2default:default2O
9C:/Git/uart/uart/uart.srcs/constrs_1/imports/new/Main.xdc2default:default2
2462default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2O
9C:/Git/uart/uart/uart.srcs/constrs_1/imports/new/Main.xdc2default:default2
2462default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
green[0]2default:default2O
9C:/Git/uart/uart/uart.srcs/constrs_1/imports/new/Main.xdc2default:default2
2472default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2O
9C:/Git/uart/uart/uart.srcs/constrs_1/imports/new/Main.xdc2default:default2
2472default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
blue[0]2default:default2O
9C:/Git/uart/uart/uart.srcs/constrs_1/imports/new/Main.xdc2default:default2
2482default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2O
9C:/Git/uart/uart/uart.srcs/constrs_1/imports/new/Main.xdc2default:default2
2482default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
blue[1]2default:default2O
9C:/Git/uart/uart/uart.srcs/constrs_1/imports/new/Main.xdc2default:default2
2492default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2O
9C:/Git/uart/uart/uart.srcs/constrs_1/imports/new/Main.xdc2default:default2
2492default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
blue[2]2default:default2O
9C:/Git/uart/uart/uart.srcs/constrs_1/imports/new/Main.xdc2default:default2
2502default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2O
9C:/Git/uart/uart/uart.srcs/constrs_1/imports/new/Main.xdc2default:default2
2502default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
blue[3]2default:default2O
9C:/Git/uart/uart/uart.srcs/constrs_1/imports/new/Main.xdc2default:default2
2512default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2O
9C:/Git/uart/uart/uart.srcs/constrs_1/imports/new/Main.xdc2default:default2
2512default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
blue[4]2default:default2O
9C:/Git/uart/uart/uart.srcs/constrs_1/imports/new/Main.xdc2default:default2
2522default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2O
9C:/Git/uart/uart/uart.srcs/constrs_1/imports/new/Main.xdc2default:default2
2522default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
blue[4]2default:default2O
9C:/Git/uart/uart/uart.srcs/constrs_1/imports/new/Main.xdc2default:default2
2532default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2O
9C:/Git/uart/uart/uart.srcs/constrs_1/imports/new/Main.xdc2default:default2
2532default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
blue[3]2default:default2O
9C:/Git/uart/uart/uart.srcs/constrs_1/imports/new/Main.xdc2default:default2
2542default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2O
9C:/Git/uart/uart/uart.srcs/constrs_1/imports/new/Main.xdc2default:default2
2542default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
blue[2]2default:default2O
9C:/Git/uart/uart/uart.srcs/constrs_1/imports/new/Main.xdc2default:default2
2552default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2O
9C:/Git/uart/uart/uart.srcs/constrs_1/imports/new/Main.xdc2default:default2
2552default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
blue[1]2default:default2O
9C:/Git/uart/uart/uart.srcs/constrs_1/imports/new/Main.xdc2default:default2
2562default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2O
9C:/Git/uart/uart/uart.srcs/constrs_1/imports/new/Main.xdc2default:default2
2562default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
blue[0]2default:default2O
9C:/Git/uart/uart/uart.srcs/constrs_1/imports/new/Main.xdc2default:default2
2572default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2O
9C:/Git/uart/uart/uart.srcs/constrs_1/imports/new/Main.xdc2default:default2
2572default:default8@Z17-55h px?
?
Finished Parsing XDC File [%s]
178*designutils2O
9C:/Git/uart/uart/uart.srcs/constrs_1/imports/new/Main.xdc2default:default8Z20-178h px? 
?
?Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2M
9C:/Git/uart/uart/uart.srcs/constrs_1/imports/new/Main.xdc2default:default2.
.Xil/uart_top_propImpl.xdc2default:defaultZ1-236h px? 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
1478.2152default:default2
0.0002default:defaultZ17-268h px? 
~
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common24
 Constraint Validation Runtime : 2default:default2
00:00:002default:default2 
00:00:00.0052default:default2
1478.2152default:default2
0.0002default:defaultZ17-268h px? 
?
[Reference run did not run incremental synthesis because %s; reverting to default synthesis
2138*designutils2+
the design is too small2default:defaultZ20-4072h px? 
?
?Flow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}2229*designutilsZ20-4379h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
~Finished Constraint Validation : Time (s): cpu = 00:00:18 ; elapsed = 00:00:18 . Memory (MB): peak = 1478.215 ; gain = 42.094
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
V
%s
*synth2>
*Start Loading Part and Timing Information
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
J
%s
*synth22
Loading part: xc7z010clg400-1
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Loading Part and Timing Information : Time (s): cpu = 00:00:18 ; elapsed = 00:00:18 . Memory (MB): peak = 1478.215 ; gain = 42.094
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
Z
%s
*synth2B
.Start Applying 'set_property' XDC Constraints
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:18 ; elapsed = 00:00:18 . Memory (MB): peak = 1478.215 ; gain = 42.094
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
!inferring latch for variable '%s'327*oasys2"
next_state_reg2default:default2R
<C:/Git/uart/uart/uart.srcs/sources_1/imports/new/uart_tx.vhd2default:default2
702default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2"
next_state_reg2default:default2J
4C:/Git/uart/uart/uart.srcs/sources_1/new/uart_rx.vhd2default:default2
522default:default8@Z8-327h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:19 ; elapsed = 00:00:19 . Memory (MB): peak = 1478.215 ; gain = 42.094
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
L
%s
*synth24
 Start RTL Component Statistics 
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   32 Bit       Adders := 2     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   10 Bit       Adders := 6     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   3 Input   10 Bit       Adders := 2     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    8 Bit       Adders := 1     
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               32 Bit    Registers := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               10 Bit    Registers := 4     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                8 Bit    Registers := 7     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                3 Bit    Registers := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                1 Bit    Registers := 10    
2default:defaulth p
x
? 
8
%s
*synth2 
+---RAMs : 
2default:defaulth p
x
? 
j
%s
*synth2R
>	               8K Bit	(1024 X 8 bit)          RAMs := 2     
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   32 Bit        Muxes := 2     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    8 Bit        Muxes := 2     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    3 Bit        Muxes := 6     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    2 Bit        Muxes := 2     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    1 Bit        Muxes := 7     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   6 Input    1 Bit        Muxes := 2     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   7 Input    1 Bit        Muxes := 3     
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
O
%s
*synth27
#Finished RTL Component Statistics 
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
H
%s
*synth20
Start Part Resource Summary
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2j
VPart Resources:
DSPs: 80 (col length:40)
BRAMs: 120 (col length: RAMB18 40 RAMB36 20)
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Finished Part Resource Summary
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
W
%s
*synth2?
+Start Cross Boundary and Area Optimization
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
H
&Parallel synthesis criteria is not met4829*oasysZ8-7080h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:22 ; elapsed = 00:00:23 . Memory (MB): peak = 1478.215 ; gain = 42.094
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?---------------------------------------------------------------------------------
Start ROM, RAM, DSP, Shift Register and Retiming Reporting
2default:defaulth px? 
~
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px? 
d
%s*synth2L
8
Block RAM: Preliminary Mapping Report (see note below)
2default:defaulth px? 
?
%s*synth2?
?+------------+-------------------------------------+------------------------+---+---+------------------------+---+---+------------------+--------+--------+
2default:defaulth px? 
?
%s*synth2?
?|Module Name | RTL Object                          | PORT A (Depth x Width) | W | R | PORT B (Depth x Width) | W | R | Ports driving FF | RAMB18 | RAMB36 | 
2default:defaulth px? 
?
%s*synth2?
?+------------+-------------------------------------+------------------------+---+---+------------------------+---+---+------------------+--------+--------+
2default:defaulth px? 
?
%s*synth2?
?|uart_top    | UART_COMP/FIFO_TX_COMP/fifo_var_reg | 1 K x 8(READ_FIRST)    | W |   | 1 K x 8(WRITE_FIRST)   |   | R | Port A and B     | 1      | 0      | 
2default:defaulth px? 
?
%s*synth2?
?|uart_top    | UART_COMP/FIFO_RX_COMP/fifo_var_reg | 1 K x 8(READ_FIRST)    | W |   | 1 K x 8(WRITE_FIRST)   |   | R | Port A and B     | 1      | 0      | 
2default:defaulth px? 
?
%s*synth2?
?+------------+-------------------------------------+------------------------+---+---+------------------------+---+---+------------------+--------+--------+

2default:defaulth px? 
?
%s*synth2?
?Note: The table above is a preliminary report that shows the Block RAMs at the current stage of the synthesis flow. Some Block RAMs may be reimplemented as non Block RAM primitives later in the synthesis flow. Multiple instantiated Block RAMs are reported only once. 
2default:defaulth px? 
?
%s*synth2?
?---------------------------------------------------------------------------------
Finished ROM, RAM, DSP, Shift Register and Retiming Reporting
2default:defaulth px? 
~
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
R
%s
*synth2:
&Start Applying XDC Timing Constraints
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Applying XDC Timing Constraints : Time (s): cpu = 00:00:31 ; elapsed = 00:00:31 . Memory (MB): peak = 1478.215 ; gain = 42.094
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
F
%s
*synth2.
Start Timing Optimization
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
|Finished Timing Optimization : Time (s): cpu = 00:00:31 ; elapsed = 00:00:32 . Memory (MB): peak = 1478.215 ; gain = 42.094
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2?
?---------------------------------------------------------------------------------
Start ROM, RAM, DSP, Shift Register and Retiming Reporting
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
M
%s
*synth25
!
Block RAM: Final Mapping Report
2default:defaulth p
x
? 
?
%s
*synth2?
?+------------+-------------------------------------+------------------------+---+---+------------------------+---+---+------------------+--------+--------+
2default:defaulth p
x
? 
?
%s
*synth2?
?|Module Name | RTL Object                          | PORT A (Depth x Width) | W | R | PORT B (Depth x Width) | W | R | Ports driving FF | RAMB18 | RAMB36 | 
2default:defaulth p
x
? 
?
%s
*synth2?
?+------------+-------------------------------------+------------------------+---+---+------------------------+---+---+------------------+--------+--------+
2default:defaulth p
x
? 
?
%s
*synth2?
?|uart_top    | UART_COMP/FIFO_TX_COMP/fifo_var_reg | 1 K x 8(READ_FIRST)    | W |   | 1 K x 8(WRITE_FIRST)   |   | R | Port A and B     | 1      | 0      | 
2default:defaulth p
x
? 
?
%s
*synth2?
?|uart_top    | UART_COMP/FIFO_RX_COMP/fifo_var_reg | 1 K x 8(READ_FIRST)    | W |   | 1 K x 8(WRITE_FIRST)   |   | R | Port A and B     | 1      | 0      | 
2default:defaulth p
x
? 
?
%s
*synth2?
?+------------+-------------------------------------+------------------------+---+---+------------------------+---+---+------------------+--------+--------+

2default:defaulth p
x
? 
?
%s
*synth2?
?---------------------------------------------------------------------------------
Finished ROM, RAM, DSP, Shift Register and Retiming Reporting
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
E
%s
*synth2-
Start Technology Mapping
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
?The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4799*oasys27
#UART_COMP/FIFO_RX_COMP/fifo_var_reg2default:default2
Block2default:defaultZ8-7052h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
{Finished Technology Mapping : Time (s): cpu = 00:00:32 ; elapsed = 00:00:32 . Memory (MB): peak = 1483.207 ; gain = 47.086
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2'
Start IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
Q
%s
*synth29
%Start Flattening Before IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
T
%s
*synth2<
(Finished Flattening Before IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
H
%s
*synth20
Start Final Netlist Cleanup
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Finished Final Netlist Cleanup
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
uFinished IO Insertion : Time (s): cpu = 00:00:38 ; elapsed = 00:00:38 . Memory (MB): peak = 1483.207 ; gain = 47.086
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
O
%s
*synth27
#Start Renaming Generated Instances
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Renaming Generated Instances : Time (s): cpu = 00:00:38 ; elapsed = 00:00:38 . Memory (MB): peak = 1483.207 ; gain = 47.086
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
L
%s
*synth24
 Start Rebuilding User Hierarchy
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:38 ; elapsed = 00:00:38 . Memory (MB): peak = 1483.207 ; gain = 47.086
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Start Renaming Generated Ports
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Renaming Generated Ports : Time (s): cpu = 00:00:38 ; elapsed = 00:00:38 . Memory (MB): peak = 1483.207 ; gain = 47.086
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Handling Custom Attributes : Time (s): cpu = 00:00:38 ; elapsed = 00:00:38 . Memory (MB): peak = 1483.207 ; gain = 47.086
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
J
%s
*synth22
Start Renaming Generated Nets
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Renaming Generated Nets : Time (s): cpu = 00:00:38 ; elapsed = 00:00:38 . Memory (MB): peak = 1483.207 ; gain = 47.086
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Start Writing Synthesis Report
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
A
%s
*synth2)

Report BlackBoxes: 
2default:defaulth p
x
? 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
? 
J
%s
*synth22
| |BlackBox name |Instances |
2default:defaulth p
x
? 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
? 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
? 
A
%s*synth2)

Report Cell Usage: 
2default:defaulth px? 
F
%s*synth2.
+------+---------+------+
2default:defaulth px? 
F
%s*synth2.
|      |Cell     |Count |
2default:defaulth px? 
F
%s*synth2.
+------+---------+------+
2default:defaulth px? 
F
%s*synth2.
|1     |BUFG     |     1|
2default:defaulth px? 
F
%s*synth2.
|2     |CARRY4   |    46|
2default:defaulth px? 
F
%s*synth2.
|3     |LUT1     |    10|
2default:defaulth px? 
F
%s*synth2.
|4     |LUT2     |    96|
2default:defaulth px? 
F
%s*synth2.
|5     |LUT3     |    12|
2default:defaulth px? 
F
%s*synth2.
|6     |LUT4     |    60|
2default:defaulth px? 
F
%s*synth2.
|7     |LUT5     |    54|
2default:defaulth px? 
F
%s*synth2.
|8     |LUT6     |    40|
2default:defaulth px? 
F
%s*synth2.
|9     |RAMB18E1 |     2|
2default:defaulth px? 
F
%s*synth2.
|11    |FDRE     |   216|
2default:defaulth px? 
F
%s*synth2.
|12    |LD       |     6|
2default:defaulth px? 
F
%s*synth2.
|13    |IBUF     |     2|
2default:defaulth px? 
F
%s*synth2.
|14    |OBUF     |     2|
2default:defaulth px? 
F
%s*synth2.
+------+---------+------+
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Writing Synthesis Report : Time (s): cpu = 00:00:38 ; elapsed = 00:00:38 . Memory (MB): peak = 1483.207 ; gain = 47.086
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
r
%s
*synth2Z
FSynthesis finished with 0 errors, 0 critical warnings and 3 warnings.
2default:defaulth p
x
? 
?
%s
*synth2?
}Synthesis Optimization Runtime : Time (s): cpu = 00:00:26 ; elapsed = 00:00:36 . Memory (MB): peak = 1483.207 ; gain = 4.992
2default:defaulth p
x
? 
?
%s
*synth2?
Synthesis Optimization Complete : Time (s): cpu = 00:00:38 ; elapsed = 00:00:38 . Memory (MB): peak = 1483.207 ; gain = 47.086
2default:defaulth p
x
? 
B
 Translating synthesized netlist
350*projectZ1-571h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0112default:default2
1492.0662default:default2
0.0002default:defaultZ17-268h px? 
f
-Analyzing %s Unisim elements for replacement
17*netlist2
542default:defaultZ29-17h px? 
j
2Unisim Transformation completed in %s CPU seconds
28*netlist2
02default:defaultZ29-28h px? 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px? 
u
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02default:default2
02default:defaultZ31-138h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
1496.7032default:default2
0.0002default:defaultZ17-268h px? 
?
!Unisim Transformation Summary:
%s111*project2Y
E  A total of 6 instances were transformed.
  LD => LDCE: 6 instances
2default:defaultZ1-111h px? 
g
$Synth Design complete, checksum: %s
562*	vivadotcl2
40cb1e6d2default:defaultZ4-1430h px? 
U
Releasing license: %s
83*common2
	Synthesis2default:defaultZ17-83h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
352default:default2
602default:default2
482default:default2
02default:defaultZ4-41h px? 
^
%s completed successfully
29*	vivadotcl2 
synth_design2default:defaultZ4-42h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
synth_design: 2default:default2
00:00:432default:default2
00:00:452default:default2
1496.7032default:default2
60.5822default:defaultZ17-268h px? 
u
%s6*runtcl2Y
ESynthesis results are not added to the cache due to CRITICAL_WARNING
2default:defaulth px? 
?
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2C
/C:/Git/uart/uart/uart.runs/synth_1/uart_top.dcp2default:defaultZ17-1381h px? 
?
%s4*runtcl2z
fExecuting : report_utilization -file uart_top_utilization_synth.rpt -pb uart_top_utilization_synth.pb
2default:defaulth px? 
?
Exiting %s at %s...
206*common2
Vivado2default:default2,
Fri Oct  7 22:07:19 20222default:defaultZ17-206h px? 


End Record