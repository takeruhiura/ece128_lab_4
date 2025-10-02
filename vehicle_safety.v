`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Lehigh University
// Engineer: Takeru Hiura and Shenrui Duan
// 
// Create Date: 09/23/2025 02:12:40 PM
// Design Name: 
// Module Name: vehicle_safety
// Project Name: Lab 4
// Target Devices: 
// Tool Versions: 
// Description: This is the vehicle safety module that determines when certain alarms and chimes should go off depending on the signals received. 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module vehicle_safety(
input wire SB,DOOR,KEY,BRK,PARK,HOOD,
input wire BAT_OK, AIB_OK, TMP_OK, PASS_OCC, SB_P, TRUNK, PBRK, SRV,
output wire START_PERMIT, CHIME, WARN_PRI1, WARN_PRI2,
output wire SEAT_WARN, DOOR_WARN, HOOD_WARN, TRUNK_WARN, BAT_WARN, AIRBAG_WARN, TEMP_WARN

    );
    assign SEAT_WARN=(  (!SB) | ((PASS_OCC)&(!SB_P))  )&(!SRV);
    assign DOOR_WARN=(!DOOR)&(!SRV);
    assign HOOD_WARN=(!HOOD)&(!SRV);
    assign TRUNK_WARN=(!TRUNK)&(!SRV);
    assign BAT_WARN=(!BAT_OK)&(!SRV);
    assign AIRBAG_WARN=(!AIB_OK)&(!SRV);
    assign TEMP_WARN=(!TMP_OK)&(!SRV);
    assign START_PERMIT=KEY&PARK&BRK;
    assign WARN_PRI1=HOOD_WARN|TRUNK_WARN|DOOR_WARN|SEAT_WARN;
    assign WARN_PRI2=BAT_WARN|AIRBAG_WARN|TEMP_WARN;
    assign CHIME=WARN_PRI1|PBRK;
    
endmodule
