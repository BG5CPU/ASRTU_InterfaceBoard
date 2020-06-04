///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: <Name>
//
// File: MAGB_control.v
// File history:
//      <Revision number>: <Date>: <Comments>
//      <Revision number>: <Date>: <Comments>
//      <Revision number>: <Date>: <Comments>
//
// Description: 
//
// <Description here>
//
// Targeted device: <Family::ProASIC3> <Die::A3P1000> <Package::208 PQFP>
// Author: <Name>
//
/////////////////////////////////////////////////////////////////////////////////////////////////// 

//`timescale <time_units> / <precision>


module MAGB_control( input PCLK, 
                     input PRESETN,
                     input PREADY,
                     input PSLVERR,
                     input [7:0]PRDATA, 
                     input [7:0]data_in,
                     input [7:0]ADDR,
                     input FLT_MAGB_5,
                     input FLT_MAGB_3,
                     input INT,
                     input SCLO,
                     input SDAO,
                     output reg[8:0]PADDR,
                     output reg[7:0]PWDATA,
                     output reg PSEL,
                     output reg PENABLE,
                     output reg PWRITE,
                     output reg [7:0]data,
                     output reg MAGB_PC_EN = 1'b1,
                     output reg EN_MAGB_5 = 1'b1,
                     output reg EN_MAGB_3 = 1'b1,
                     output wire SCLI,
                     output wire SDAI,
                     inout SCL,
                     inout SDA);

//<statements>
reg [4:0]next_state,current_state;
reg [3:0]data_count,ACK_count;
reg [7:0]S_DATA;
reg out_en,RW_en;

assign SCLI = SCL;
assign SDAI = SDA;

parameter   S0 = 5'd0,  //core sends START condition
            S1 = 5'd1,
            S2 = 5'd2,

            S3 = 5'd3,  //read Status Register
            S4 = 5'd4,
            S5 = 5'd5, 

            S6 = 5'd6,  //write the Data Register slave address and
            S7 = 5'd7,  //TX data
            S8 = 5'd8,

            S9 = 5'd9,      //read the Data Register slave address and
            S10 = 5'd10,     //RX data
            S11 = 5'd11,

            S12 = 5'd12,    //clear si bit and STA bit
            S13 = 5'd13,
            S14 = 5'd14,

            S_15 = 5'd15,    //core sends STOP condition
            S_16 = 5'd16,
            S_17 = 5'd17,

            S_18 = 5'd18,    //core sends STOP condition
            S_19 = 5'd19,
            S_20 = 5'd20;

always@(posedge PCLK or negedge PRESETN)
begin
    if(!PRESETN)
        current_state <= S0;

    else
        current_state <= next_state;
end

always@(posedge PCLK or negedge PRESETN)
begin
    if(!PRESETN)
        next_state <= S0;

    else
        case(current_state)
            S0: next_state <= S1;   //core sends START condition
            S1: next_state <= S2;
            S2: next_state <= S3;

            S3: next_state <= S4;   //read Status Register
            S4: next_state <= S5;
            S5: begin
                if(((S_DATA == 8'h08)|(S_DATA == 8'h10)|(S_DATA == 8'h18) 
                    |(S_DATA == 8'h20) |(S_DATA == 8'h28)|(S_DATA == 8'h30))&(data_count != 4'd6))
                    next_state <= S6;

                else if(((S_DATA == 8'h10)|(S_DATA == 8'h40)|(S_DATA == 8'h48)
                        |(S_DATA == 8'h50)|(S_DATA == 8'h58))&(data_count != 4'd6))
                    next_state <= S9;

                else if(((S_DATA == 8'h08)|(S_DATA == 8'h10)|(S_DATA == 8'h18) 
                        |(S_DATA == 8'h20) |(S_DATA == 8'h28)|(S_DATA == 8'h30)
                        |(S_DATA == 8'h40)|(S_DATA == 8'h48)|(S_DATA == 8'h50)
                        |(S_DATA == 8'h58))&(data_count == 4'd6))
                    next_state <= S_18;

                else if(S_DATA == 8'hE0)
                    next_state <= S0;
    
                else
                    next_state <= S3;
            end

            S6: next_state <= S7;   //write the Data Register slave address and
            S7: next_state <= S8;   //TX data
            S8:  next_state <= S12;

            S9: next_state <= S10;      //read the Data Register slave address and
            S10: next_state <= S11;     //RX data
            S11: next_state <= S_15;

            S12: next_state <= S13;     //clear si bit and STA bit
            S13: next_state <= S14;
            S14: next_state <= S3;

            S_15: next_state <= S_16;   //clear si bit and STA bit,set aa bit
            S_16: next_state <= S_17;
            S_17: next_state <= S3;

            S_18: next_state <= S_19;   //core sends STOP condition
            S_19: next_state <= S_20;
            S_20: next_state <= S3;
            default: next_state <= S0;
        endcase   
end

//read or write data from slave core
//if RW_en=1,write data
//if RW_en=0,read data
always@(posedge PCLK or negedge PRESETN)
begin
    if(!PRESETN)
        RW_en <= 1'b1;
    else
        case(current_state)
            S0,S6,S_18: RW_en <= 1'b1;
            S9: RW_en <= 1'b0;
            default: RW_en <= RW_en;
        endcase
end

always@(posedge INT or negedge PRESETN)
begin
    if(!PRESETN)
        data_count <= 4'b0;
    else if(data_count == 4'd6)
        data_count <= 4'b0;
    else
        data_count <= data_count + 1'b1;
end

parameter   CTRL = 9'h00,
            STAT = 9'h04,
            DATA = 9'h08,
            ADDR0 = 9'h0C,
            SMB  = 9'h10,
            ADDR1 = 9'h1C;

always@(posedge PCLK or negedge PRESETN)
begin
    if(!PRESETN) begin
        PADDR <= CTRL;
        PWDATA <= 8'h00;
    end

    else
        case(next_state)
            S0,S1,S2: begin
                PADDR <= CTRL;
                PWDATA <= 8'h60;
            end

            S3,S4,S5: begin
                PADDR <= STAT;
                PWDATA <= 8'h00;
            end

            S6,S7,S8: begin
            if((data_count == 4'b1)|(data_count == 4'b0)) begin
                PADDR <= DATA;
                PWDATA <= ADDR;
            end

            else begin
                PADDR <= DATA;
                PWDATA <= data_in;
            end 
            end

            S9,S10,S11: begin
                PADDR <= DATA;
                PWDATA <= 8'h00;               
            end

            S12,S13,S14: begin
                PADDR <= CTRL;
                PWDATA <= 8'h40;
            end

            S_15,S_16,S_17: begin
                PADDR <= CTRL;
                PWDATA <= 8'h44;
            end

            S_18,S_19,S_20: begin
                PADDR <= CTRL;
                PWDATA <= 8'h50;
            end

            default: begin
                PADDR <= CTRL;
                PWDATA <= 8'h40;
            end
        endcase
end

always@(posedge PCLK or negedge PRESETN)
begin
    if(!PRESETN) begin
        PSEL <= 1'b0;
        PWRITE <= 1'b0;
    end

    else
        case(next_state)
            S0,S1,S6,S7,S12,S13,S_15,S_16,S_18,S_19: begin
                PSEL <= 1'b1;
                PWRITE <= 1'b1;
            end

            S3,S4,S9,S10: begin
                PSEL <= 1'b1;
                PWRITE <= 1'b0;
            end

            default: begin
                PSEL <= 1'b0;
                PWRITE <= 1'b0;
            end
        endcase
end

always@(posedge PCLK or negedge PRESETN)
begin
    if(!PRESETN)
        PENABLE <= 1'b0;

    else
        case(next_state)
            S1,S4,S7,S10,S13,S_16,S_19: PENABLE <= 1'b1;
            default: PENABLE <= 1'b0;
        endcase
end


always@(posedge PCLK or negedge PRESETN)
begin
    if(!PRESETN) begin
        S_DATA <= 8'b0;
        data <= 8'b0;
    end

    else
        case(current_state)
            S4: begin
                S_DATA <= PRDATA;
                data <= data;
            end

            S10: begin
                S_DATA <= S_DATA;
                data <= PRDATA;
            end

            default: begin
                S_DATA <= S_DATA;
                data <= data;
            end
        endcase
end

always@(negedge SCLO or negedge PRESETN)
begin
    if(!PRESETN)
        ACK_count <= 4'b0;

    else if(data_count == 4'd6)
        ACK_count <= 4'b0;

    else if(ACK_count == 4'd8) 
        ACK_count <= 4'b0;

    else
        ACK_count <= ACK_count + 1'b1;
end

always@(negedge SCLO or negedge PRESETN)
begin
    if(!PRESETN) 
        out_en <= 1'b1;
/***Master Transmitter Mode***/
    else if((ACK_count == 4'd8)&RW_en)
        out_en <= 1'b0;
/***Master Receiver Mode***/
    else if((ACK_count != 4'd8)&(!RW_en))
        out_en <= 1'b0;
    else if((ACK_count == 4'd8)&(!RW_en))
        out_en <= 1'b1;
    else
        out_en <= 1'b1;
end

assign SDA = out_en ? SDAO:1'bz;
assign SCL = SCLO;
endmodule
