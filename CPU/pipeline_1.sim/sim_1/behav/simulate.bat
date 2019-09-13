@echo off
set xv_path=E:\\vivado\\Vivado\\2017.1\\bin
call %xv_path%/xsim Pipeline_1_behav -key {Behavioral:sim_1:Functional:Pipeline_1} -tclbatch Pipeline_1.tcl -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
