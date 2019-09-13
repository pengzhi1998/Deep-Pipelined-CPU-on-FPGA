@echo off
set xv_path=E:\\vivado\\Vivado\\2017.1\\bin
call %xv_path%/xelab  -wto 96558aa621474a528f5c772cdcc583cd -m64 --debug typical --relax --mt 2 -L dist_mem_gen_v8_0_11 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -L xpm --snapshot Pipeline_1_behav xil_defaultlib.Pipeline_1 xil_defaultlib.glbl -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
