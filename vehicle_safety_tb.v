`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Lehigh University
// Engineer: Takeru Hiura and Shenrui Duan
// 
// Create Date: 09/23/2025 02:43:30 PM
// Design Name: 
// Module Name: vehicle_safety_tb
// Project Name: Lab 4
// Target Devices: 
// Tool Versions: 
// Description: This is a testbench with several tests for the vehicle safety module. 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module vehicle_safety_tb;

    reg SB, DOOR, KEY, BRK, PARK, HOOD;
    reg BAT_OK, AIB_OK, TMP_OK;
    reg PASS_OCC, SB_P, TRUNK, PBRK;
    reg SRV;

    // Outputs
    wire START_PERMIT, CHIME;
    wire WARN_PRI2, WARN_PRI1;
    wire SEAT_WARN, DOOR_WARN, HOOD_WARN, TRUNK_WARN;
    wire BAT_WARN, AIRBAG_WARN, TEMP_WARN, PBRK_WARN;

    // Instantiate the DUT (Device Under Test)
    vehicle_safety uut (
        .SB(SB), .DOOR(DOOR), .KEY(KEY), .BRK(BRK), .PARK(PARK), .HOOD(HOOD),
        .BAT_OK(BAT_OK), .AIB_OK(AIB_OK), .TMP_OK(TMP_OK),
        .PASS_OCC(PASS_OCC), .SB_P(SB_P), .TRUNK(TRUNK), .PBRK(PBRK), .SRV(SRV),
        .START_PERMIT(START_PERMIT), .CHIME(CHIME),
        .WARN_PRI2(WARN_PRI2), .WARN_PRI1(WARN_PRI1),
        .SEAT_WARN(SEAT_WARN), .DOOR_WARN(DOOR_WARN), .HOOD_WARN(HOOD_WARN), .TRUNK_WARN(TRUNK_WARN),
        .BAT_WARN(BAT_WARN), .AIRBAG_WARN(AIRBAG_WARN), .TEMP_WARN(TEMP_WARN), .PBRK_WARN(PBRK_WARN)
    );

    initial begin
        SB = 0; DOOR = 0; KEY = 0; BRK = 0; PARK = 0; HOOD = 0;
        BAT_OK = 0; AIB_OK = 0; TMP_OK = 0;
        PASS_OCC = 0; SB_P = 0; TRUNK = 0; PBRK = 0;
        SRV = 0;

        #10 KEY=1; BRK=1; PARK=1;
        
        #10 KEY=0; BRK=0; PARK=0;
        
        #10 BAT_OK=0;

        #10 SB=1;PASS_OCC=1;SB_P=1;SRV=0;
        
        #10 $stop;
    end

endmodule
