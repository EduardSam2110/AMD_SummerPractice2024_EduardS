
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2$
create_project: 2default:default2
00:00:052default:default2
00:00:062default:default2
1458.0472default:default2
159.6722default:defaultZ17-268h px� 
�
Command: %s
1870*	planAhead2�
{read_checkpoint -auto_incremental -incremental C:/Users/training/Proiect_D8/Proiect_D8.srcs/utils_1/imports/synth_1/top.dcp2default:defaultZ12-2866h px� 
�
;Read reference checkpoint from %s for incremental synthesis3154*	planAhead2`
LC:/Users/training/Proiect_D8/Proiect_D8.srcs/utils_1/imports/synth_1/top.dcp2default:defaultZ12-5825h px� 
T
-Please ensure there are no constraint changes3725*	planAheadZ12-7989h px� 
q
Command: %s
53*	vivadotcl2@
,synth_design -top top -part xc7z007sclg400-12default:defaultZ4-113h px� 
:
Starting synth_design
149*	vivadotclZ4-321h px� 
�
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2default:default2
xc7z007s2default:defaultZ17-347h px� 
�
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2default:default2
xc7z007s2default:defaultZ17-349h px� 
W
Loading part %s157*device2$
xc7z007sclg400-12default:defaultZ21-403h px� 

VNo compile time benefit to using incremental synthesis; A full resynthesis will be run2353*designutilsZ20-5440h px� 
�
�Flow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}2229*designutilsZ20-4379h px� 
�
HMultithreading enabled for synth_design using a maximum of %s processes.4828*oasys2
22default:defaultZ8-7079h px� 
a
?Launching helper process for spawning children vivado processes4827*oasysZ8-7078h px� 
`
#Helper process launched with PID %s4824*oasys2
220562default:defaultZ8-7075h px� 
�
%s*synth2�
yStarting RTL Elaboration : Time (s): cpu = 00:00:06 ; elapsed = 00:00:06 . Memory (MB): peak = 2279.320 ; gain = 411.051
2default:defaulth px� 
�
synthesizing module '%s'%s4497*oasys2
top2default:default2
 2default:default2V
@C:/Users/training/Proiect_D8/Proiect_D8.srcs/sources_1/new/ROM.v2default:default2
2102default:default8@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
clk_divider2default:default2
 2default:default2V
@C:/Users/training/Proiect_D8/Proiect_D8.srcs/sources_1/new/ROM.v2default:default2
1002default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
clk_divider2default:default2
 2default:default2
02default:default2
12default:default2V
@C:/Users/training/Proiect_D8/Proiect_D8.srcs/sources_1/new/ROM.v2default:default2
1002default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2

one_period2default:default2
 2default:default2V
@C:/Users/training/Proiect_D8/Proiect_D8.srcs/sources_1/new/ROM.v2default:default2
1842default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2

one_period2default:default2
 2default:default2
02default:default2
12default:default2V
@C:/Users/training/Proiect_D8/Proiect_D8.srcs/sources_1/new/ROM.v2default:default2
1842default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
ROM2default:default2
 2default:default2V
@C:/Users/training/Proiect_D8/Proiect_D8.srcs/sources_1/new/ROM.v2default:default2
12default:default8@Z8-6157h px� 
�
,$readmem data file '%s' is read successfully3426*oasys2
ROM_MEM.mem2default:default2V
@C:/Users/training/Proiect_D8/Proiect_D8.srcs/sources_1/new/ROM.v2default:default2
92default:default8@Z8-3876h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
ROM2default:default2
 2default:default2
02default:default2
12default:default2V
@C:/Users/training/Proiect_D8/Proiect_D8.srcs/sources_1/new/ROM.v2default:default2
12default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
CNT22default:default2
 2default:default2V
@C:/Users/training/Proiect_D8/Proiect_D8.srcs/sources_1/new/ROM.v2default:default2
742default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
CNT22default:default2
 2default:default2
02default:default2
12default:default2V
@C:/Users/training/Proiect_D8/Proiect_D8.srcs/sources_1/new/ROM.v2default:default2
742default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
register2default:default2
 2default:default2V
@C:/Users/training/Proiect_D8/Proiect_D8.srcs/sources_1/new/ROM.v2default:default2
1462default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
register2default:default2
 2default:default2
02default:default2
12default:default2V
@C:/Users/training/Proiect_D8/Proiect_D8.srcs/sources_1/new/ROM.v2default:default2
1462default:default8@Z8-6155h px� 
�
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
42default:default2
do2default:default2
122default:default2
register2default:default2V
@C:/Users/training/Proiect_D8/Proiect_D8.srcs/sources_1/new/ROM.v2default:default2
2412default:default8@Z8-689h px� 
�
synthesizing module '%s'%s4497*oasys2
ALU2default:default2
 2default:default2V
@C:/Users/training/Proiect_D8/Proiect_D8.srcs/sources_1/new/ROM.v2default:default2
1202default:default8@Z8-6157h px� 
�
evariable '%s' is written by both blocking and non-blocking assignments, entire logic could be removed4426*oasys2
ERR2default:default2V
@C:/Users/training/Proiect_D8/Proiect_D8.srcs/sources_1/new/ROM.v2default:default2
1402default:default8@Z8-6090h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
ALU2default:default2
 2default:default2
02default:default2
12default:default2V
@C:/Users/training/Proiect_D8/Proiect_D8.srcs/sources_1/new/ROM.v2default:default2
1202default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
DEC_BT2default:default2
 2default:default2V
@C:/Users/training/Proiect_D8/Proiect_D8.srcs/sources_1/new/ROM.v2default:default2
1712default:default8@Z8-6157h px� 
�
-case statement is not full and has no default155*oasys2V
@C:/Users/training/Proiect_D8/Proiect_D8.srcs/sources_1/new/ROM.v2default:default2
1762default:default8@Z8-155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
DEC_BT2default:default2
 2default:default2
02default:default2
12default:default2V
@C:/Users/training/Proiect_D8/Proiect_D8.srcs/sources_1/new/ROM.v2default:default2
1712default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
DEC_ERRF2default:default2
 2default:default2V
@C:/Users/training/Proiect_D8/Proiect_D8.srcs/sources_1/new/ROM.v2default:default2
1572default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
DEC_ERRF2default:default2
 2default:default2
02default:default2
12default:default2V
@C:/Users/training/Proiect_D8/Proiect_D8.srcs/sources_1/new/ROM.v2default:default2
1572default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
MUX412default:default2
 2default:default2V
@C:/Users/training/Proiect_D8/Proiect_D8.srcs/sources_1/new/ROM.v2default:default2
852default:default8@Z8-6157h px� 
Z
%s
*synth2B
.	Parameter SIZE bound to: 12 - type: integer 
2default:defaulth p
x
� 
�
8referenced signal '%s' should be on the sensitivity list567*oasys2
in02default:default2V
@C:/Users/training/Proiect_D8/Proiect_D8.srcs/sources_1/new/ROM.v2default:default2
902default:default8@Z8-567h px� 
�
8referenced signal '%s' should be on the sensitivity list567*oasys2
in12default:default2V
@C:/Users/training/Proiect_D8/Proiect_D8.srcs/sources_1/new/ROM.v2default:default2
902default:default8@Z8-567h px� 
�
8referenced signal '%s' should be on the sensitivity list567*oasys2
in22default:default2V
@C:/Users/training/Proiect_D8/Proiect_D8.srcs/sources_1/new/ROM.v2default:default2
902default:default8@Z8-567h px� 
�
8referenced signal '%s' should be on the sensitivity list567*oasys2
in32default:default2V
@C:/Users/training/Proiect_D8/Proiect_D8.srcs/sources_1/new/ROM.v2default:default2
902default:default8@Z8-567h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
MUX412default:default2
 2default:default2
02default:default2
12default:default2V
@C:/Users/training/Proiect_D8/Proiect_D8.srcs/sources_1/new/ROM.v2default:default2
852default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
DEC242default:default2
 2default:default2V
@C:/Users/training/Proiect_D8/Proiect_D8.srcs/sources_1/new/ROM.v2default:default2
592default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
DEC242default:default2
 2default:default2
02default:default2
12default:default2V
@C:/Users/training/Proiect_D8/Proiect_D8.srcs/sources_1/new/ROM.v2default:default2
592default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2)
MUX41__parameterized02default:default2
 2default:default2V
@C:/Users/training/Proiect_D8/Proiect_D8.srcs/sources_1/new/ROM.v2default:default2
852default:default8@Z8-6157h px� 
�
8referenced signal '%s' should be on the sensitivity list567*oasys2
in02default:default2V
@C:/Users/training/Proiect_D8/Proiect_D8.srcs/sources_1/new/ROM.v2default:default2
902default:default8@Z8-567h px� 
�
8referenced signal '%s' should be on the sensitivity list567*oasys2
in12default:default2V
@C:/Users/training/Proiect_D8/Proiect_D8.srcs/sources_1/new/ROM.v2default:default2
902default:default8@Z8-567h px� 
�
8referenced signal '%s' should be on the sensitivity list567*oasys2
in22default:default2V
@C:/Users/training/Proiect_D8/Proiect_D8.srcs/sources_1/new/ROM.v2default:default2
902default:default8@Z8-567h px� 
�
8referenced signal '%s' should be on the sensitivity list567*oasys2
in32default:default2V
@C:/Users/training/Proiect_D8/Proiect_D8.srcs/sources_1/new/ROM.v2default:default2
902default:default8@Z8-567h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2)
MUX41__parameterized02default:default2
 2default:default2
02default:default2
12default:default2V
@C:/Users/training/Proiect_D8/Proiect_D8.srcs/sources_1/new/ROM.v2default:default2
852default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
DIGT_DEC2default:default2
 2default:default2V
@C:/Users/training/Proiect_D8/Proiect_D8.srcs/sources_1/new/ROM.v2default:default2
232default:default8@Z8-6157h px� 
�
default block is never used226*oasys2V
@C:/Users/training/Proiect_D8/Proiect_D8.srcs/sources_1/new/ROM.v2default:default2
382default:default8@Z8-226h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
DIGT_DEC2default:default2
 2default:default2
02default:default2
12default:default2V
@C:/Users/training/Proiect_D8/Proiect_D8.srcs/sources_1/new/ROM.v2default:default2
232default:default8@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
top2default:default2
 2default:default2
02default:default2
12default:default2V
@C:/Users/training/Proiect_D8/Proiect_D8.srcs/sources_1/new/ROM.v2default:default2
2102default:default8@Z8-6155h px� 
�
%s*synth2�
yFinished RTL Elaboration : Time (s): cpu = 00:00:08 ; elapsed = 00:00:08 . Memory (MB): peak = 2370.109 ; gain = 501.840
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:08 ; elapsed = 00:00:08 . Memory (MB): peak = 2388.031 ; gain = 519.762
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:08 ; elapsed = 00:00:08 . Memory (MB): peak = 2388.031 ; gain = 519.762
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0032default:default2
2388.0312default:default2
0.0002default:defaultZ17-268h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
>

Processing XDC Constraints
244*projectZ1-262h px� 
=
Initializing timing engine
348*projectZ1-569h px� 
�
Parsing XDC File [%s]
179*designutils2[
EC:/Users/training/Proiect_D8/Proiect_D8.srcs/constrs_1/new/constr.xdc2default:default8Z20-179h px� 
�
Finished Parsing XDC File [%s]
178*designutils2[
EC:/Users/training/Proiect_D8/Proiect_D8.srcs/constrs_1/new/constr.xdc2default:default8Z20-178h px� 
�
�Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2Y
EC:/Users/training/Proiect_D8/Proiect_D8.srcs/constrs_1/new/constr.xdc2default:default2)
.Xil/top_propImpl.xdc2default:defaultZ1-236h px� 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
2494.6482default:default2
0.0002default:defaultZ17-268h px� 
~
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common24
 Constraint Validation Runtime : 2default:default2
00:00:002default:default2 
00:00:00.0022default:default2
2494.6482default:default2
0.0002default:defaultZ17-268h px� 

VNo compile time benefit to using incremental synthesis; A full resynthesis will be run2353*designutilsZ20-5440h px� 
�
�Flow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}2229*designutilsZ20-4379h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
Finished Constraint Validation : Time (s): cpu = 00:00:16 ; elapsed = 00:00:16 . Memory (MB): peak = 2494.648 ; gain = 626.379
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
V
%s
*synth2>
*Start Loading Part and Timing Information
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Loading part: xc7z007sclg400-1
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Loading Part and Timing Information : Time (s): cpu = 00:00:16 ; elapsed = 00:00:16 . Memory (MB): peak = 2494.648 ; gain = 626.379
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
Z
%s
*synth2B
.Start Applying 'set_property' XDC Constraints
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:16 ; elapsed = 00:00:16 . Memory (MB): peak = 2494.648 ; gain = 626.379
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
!inferring latch for variable '%s'327*oasys2
OUT_reg2default:default2V
@C:/Users/training/Proiect_D8/Proiect_D8.srcs/sources_1/new/ROM.v2default:default2
1332default:default8@Z8-327h px� 
�
!inferring latch for variable '%s'327*oasys2
OF_reg2default:default2V
@C:/Users/training/Proiect_D8/Proiect_D8.srcs/sources_1/new/ROM.v2default:default2
1332default:default8@Z8-327h px� 
�
!inferring latch for variable '%s'327*oasys2
ZERO_reg2default:default2V
@C:/Users/training/Proiect_D8/Proiect_D8.srcs/sources_1/new/ROM.v2default:default2
1332default:default8@Z8-327h px� 
�
!inferring latch for variable '%s'327*oasys2
out_reg2default:default2V
@C:/Users/training/Proiect_D8/Proiect_D8.srcs/sources_1/new/ROM.v2default:default2
1772default:default8@Z8-327h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:16 ; elapsed = 00:00:16 . Memory (MB): peak = 2494.648 ; gain = 626.379
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
L
%s
*synth24
 Start RTL Component Statistics 
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input   13 Bit       Adders := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   3 Input   13 Bit       Adders := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    7 Bit       Adders := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    2 Bit       Adders := 1     
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               32 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               12 Bit    Registers := 3     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                7 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                2 Bit    Registers := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 1     
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
X
%s
*synth2@
,	   9 Input   32 Bit        Muxes := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   4 Input   12 Bit        Muxes := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   4 Input    4 Bit        Muxes := 3     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   7 Input    2 Bit        Muxes := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   5 Input    2 Bit        Muxes := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    1 Bit        Muxes := 6     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   8 Input    1 Bit        Muxes := 6     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   5 Input    1 Bit        Muxes := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	  16 Input    1 Bit        Muxes := 7     
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
O
%s
*synth27
#Finished RTL Component Statistics 
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
H
%s
*synth20
Start Part Resource Summary
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2j
VPart Resources:
DSPs: 66 (col length:40)
BRAMs: 100 (col length: RAMB18 40 RAMB36 20)
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Finished Part Resource Summary
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
W
%s
*synth2?
+Start Cross Boundary and Area Optimization
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
H
&Parallel synthesis criteria is not met4829*oasysZ8-7080h px� 
�
RFound unconnected internal register '%s' and it is trimmed from '%s' to '%s' bits.3455*oasys2
RgOP/do_reg2default:default2
122default:default2
42default:default2V
@C:/Users/training/Proiect_D8/Proiect_D8.srcs/sources_1/new/ROM.v2default:default2
1532default:default8@Z8-3936h px� 
�
RFound unconnected internal register '%s' and it is trimmed from '%s' to '%s' bits.3455*oasys2
rom/out_reg2default:default2
322default:default2
282default:default2V
@C:/Users/training/Proiect_D8/Proiect_D8.srcs/sources_1/new/ROM.v2default:default2
152default:default8@Z8-3936h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2"
alu/OUT_reg[0]2default:default2
top2default:defaultZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2

alu/OF_reg2default:default2
top2default:defaultZ8-3332h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:18 ; elapsed = 00:00:19 . Memory (MB): peak = 2494.648 ; gain = 626.379
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
R
%s
*synth2:
&Start Applying XDC Timing Constraints
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Applying XDC Timing Constraints : Time (s): cpu = 00:00:24 ; elapsed = 00:00:24 . Memory (MB): peak = 2494.648 ; gain = 626.379
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
F
%s
*synth2.
Start Timing Optimization
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
}Finished Timing Optimization : Time (s): cpu = 00:00:24 ; elapsed = 00:00:24 . Memory (MB): peak = 2494.648 ; gain = 626.379
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
E
%s
*synth2-
Start Technology Mapping
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
|Finished Technology Mapping : Time (s): cpu = 00:00:24 ; elapsed = 00:00:24 . Memory (MB): peak = 2494.648 ; gain = 626.379
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
?
%s
*synth2'
Start IO Insertion
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
Q
%s
*synth29
%Start Flattening Before IO Insertion
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
T
%s
*synth2<
(Finished Flattening Before IO Insertion
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
H
%s
*synth20
Start Final Netlist Cleanup
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Finished Final Netlist Cleanup
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
vFinished IO Insertion : Time (s): cpu = 00:00:30 ; elapsed = 00:00:30 . Memory (MB): peak = 2494.648 ; gain = 626.379
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
O
%s
*synth27
#Start Renaming Generated Instances
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Renaming Generated Instances : Time (s): cpu = 00:00:30 ; elapsed = 00:00:30 . Memory (MB): peak = 2494.648 ; gain = 626.379
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
L
%s
*synth24
 Start Rebuilding User Hierarchy
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:30 ; elapsed = 00:00:30 . Memory (MB): peak = 2494.648 ; gain = 626.379
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Start Renaming Generated Ports
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Renaming Generated Ports : Time (s): cpu = 00:00:30 ; elapsed = 00:00:30 . Memory (MB): peak = 2494.648 ; gain = 626.379
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:30 ; elapsed = 00:00:30 . Memory (MB): peak = 2494.648 ; gain = 626.379
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
J
%s
*synth22
Start Renaming Generated Nets
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Renaming Generated Nets : Time (s): cpu = 00:00:30 ; elapsed = 00:00:30 . Memory (MB): peak = 2494.648 ; gain = 626.379
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Start Writing Synthesis Report
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
A
%s
*synth2)

Report BlackBoxes: 
2default:defaulth p
x
� 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
� 
J
%s
*synth22
| |BlackBox name |Instances |
2default:defaulth p
x
� 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
� 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
� 
A
%s*synth2)

Report Cell Usage: 
2default:defaulth px� 
D
%s*synth2,
+------+-------+------+
2default:defaulth px� 
D
%s*synth2,
|      |Cell   |Count |
2default:defaulth px� 
D
%s*synth2,
+------+-------+------+
2default:defaulth px� 
D
%s*synth2,
|1     |BUFG   |     1|
2default:defaulth px� 
D
%s*synth2,
|2     |CARRY4 |     5|
2default:defaulth px� 
D
%s*synth2,
|3     |LUT1   |     5|
2default:defaulth px� 
D
%s*synth2,
|4     |LUT2   |    14|
2default:defaulth px� 
D
%s*synth2,
|5     |LUT3   |     6|
2default:defaulth px� 
D
%s*synth2,
|6     |LUT4   |     6|
2default:defaulth px� 
D
%s*synth2,
|7     |LUT5   |     4|
2default:defaulth px� 
D
%s*synth2,
|8     |LUT6   |    16|
2default:defaulth px� 
D
%s*synth2,
|9     |FDRE   |    36|
2default:defaulth px� 
D
%s*synth2,
|10    |LD     |     6|
2default:defaulth px� 
D
%s*synth2,
|11    |IBUF   |     5|
2default:defaulth px� 
D
%s*synth2,
|12    |OBUF   |    11|
2default:defaulth px� 
D
%s*synth2,
+------+-------+------+
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Writing Synthesis Report : Time (s): cpu = 00:00:30 ; elapsed = 00:00:30 . Memory (MB): peak = 2494.648 ; gain = 626.379
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
r
%s
*synth2Z
FSynthesis finished with 0 errors, 0 critical warnings and 9 warnings.
2default:defaulth p
x
� 
�
%s
*synth2�
Synthesis Optimization Runtime : Time (s): cpu = 00:00:20 ; elapsed = 00:00:29 . Memory (MB): peak = 2494.648 ; gain = 519.762
2default:defaulth p
x
� 
�
%s
*synth2�
�Synthesis Optimization Complete : Time (s): cpu = 00:00:30 ; elapsed = 00:00:30 . Memory (MB): peak = 2494.648 ; gain = 626.379
2default:defaulth p
x
� 
B
 Translating synthesized netlist
350*projectZ1-571h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0012default:default2
2494.6482default:default2
0.0002default:defaultZ17-268h px� 
f
-Analyzing %s Unisim elements for replacement
17*netlist2
112default:defaultZ29-17h px� 
j
2Unisim Transformation completed in %s CPU seconds
28*netlist2
02default:defaultZ29-28h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
u
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
12default:default2
32default:defaultZ31-138h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
2494.6482default:default2
0.0002default:defaultZ17-268h px� 
�
!Unisim Transformation Summary:
%s111*project2�
r  A total of 6 instances were transformed.
  LD => LDCE: 3 instances
  LD => LDCE (inverted pins: G): 3 instances
2default:defaultZ1-111h px� 
h
%Synth Design complete | Checksum: %s
562*	vivadotcl2
d0a3c5632default:defaultZ4-1430h px� 
U
Releasing license: %s
83*common2
	Synthesis2default:defaultZ17-83h px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
502default:default2
192default:default2
02default:default2
02default:defaultZ4-41h px� 
^
%s completed successfully
29*	vivadotcl2 
synth_design2default:defaultZ4-42h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
synth_design: 2default:default2
00:00:352default:default2
00:00:372default:default2
2494.6482default:default2
1011.7462default:defaultZ17-268h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2P
<C:/Users/training/Proiect_D8/Proiect_D8.runs/synth_1/top.dcp2default:defaultZ17-1381h px� 
�
%s4*runtcl2p
\Executing : report_utilization -file top_utilization_synth.rpt -pb top_utilization_synth.pb
2default:defaulth px� 
�
Exiting %s at %s...
206*common2
Vivado2default:default2,
Thu Jul 11 12:22:37 20242default:defaultZ17-206h px� 


End Record