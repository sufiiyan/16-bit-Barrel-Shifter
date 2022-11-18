# 16-bit-Barrel-Shifter
This repo contains iverilog code for 16-bit barrel shifter which i did as project for our course UE21CS251A - Digital Design and Computer Organization.
<br>
<br>

### Run and Compile this code.
To run the code you need have verilog installed in your system, if not then you can follow [this](https://iverilog.fandom.com/wiki/Installation_Guide) installation guide.
After installation is complete follow these steps:
#### 1. Clone this repo by running this command or you can just download the files
```
git clone https://github.com/sufiiyan/16-bit-Barrel-Shifter
```
#### 2. Compile main file and testbench file
```
iverilog -o barrel barrel_shifter.v tb_barrel_shifter.v
```
#### 3. Run the file by
```
vvp barrel
```
#### 4. Get the GTK wave by running below command
```
gtkwave tb_barrel_shifter.vcd
```
