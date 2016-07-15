@echo off
set xv_path=C:\\Xilinx\\Vivado\\2016.2\\bin
call %xv_path%/xsim TopModule_behav -key {Behavioral:sim_1:Functional:TopModule} -tclbatch TopModule.tcl -view C:/Users/Owner/Desktop/CS2204-Summer-2016-Research-Project/side-projects/test-bench/UartControllerTest.wcfg -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
