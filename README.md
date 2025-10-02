# ECE 128 Lab 3 README File


## Project Description
The focus of this lab is to design a safety and warning system for a vehicle using combinational logic. The input and output requirements for the lab were provided for this lab. The objective of this lab is to understand how to develop a module from scratch based on the specific requirements. The lab is also based on our interpretations of how each warning signal works and what requirements are needed for each.


## How to simulate the program and implement on the FPGA 
To simulate the program, ensure that each model file is located in the design sources, the constraints file is in the constraints directory, and the testbench file is in the simulation sources directory. Run the synthesis and then click run simulation, and then the behavioral simulation. This will display the testbench where you can analyze if the module is behaving accordingly. 

To program the FPGA with the vehicle safety module, run the implementation, and generate the bitstream. Once the bitstream is generated, open the hardware manager and program the board using the .bit file. Make sure the correct FPGA board is connected to the computer so you can implement and test the module. 
