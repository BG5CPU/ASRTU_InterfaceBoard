///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: <Name>
//
// File: I2C_slave.v
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

module I2C_slave(input PCLK, 
                 input PRESETN,
                 input PREADY,
                 input PSLVERR,
                 input [7:0]PRDATA,
                 input [7:0]data_in,
                 input INT,
                 input SCLO,
                 input SDAO,
                 output reg[8:0]PADDR,
                 output reg[7:0]PWDATA,
                 output reg PSEL,
                 output reg PENABLE,
                 output reg PWRITE,
                 output reg [7:0]data,
                 output wire SCLI,
                 output wire SDAI,
                 inout SCL,
                 inout SDA);

//<statements>
reg [3:0]current_state,next_state,count,data_count;
reg [7:0]SR;
reg out_en,RW_en;

assign SCLI = SCL;
assign SDAI = SDA;

parameter   S0 = 4'd0,  //set ADDR0 Register
            S1 = 4'd1,
            S2 = 4'd2,

            S3 = 4'd3,  //set ens1 and aa bits, clear si bit
            S4 = 4'd4,  
            S5 = 4'd5, 

            S6 = 4'd6,  //read Status Register, if register=0x60,0x80,0x88
            S7 = 4'd7,  //continue with the transmission
            S8 = 4'd8,

            S9 = 4'd9,      //read the Data Register slave address and
            S10 = 4'd10,    //RX data
            S11 = 4'd11,

            S12 = 4'd12,    //write the Data Register slave address and
            S13 = 4'd13,    //TX data
            S14 = 4'd14,

            S15 = 4'd15;

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
            S0: next_state <= S1;   //set ADDR0 Register
            S1: next_state <= S2;
            S2: next_state <= S3;

            S3: next_state <= S4;   //set ens1 and aa bits,clear si bit
            S4: next_state <= S5;
            S5: next_state <= S6;

            S6: next_state <= S7;   //read Status Register, if register=0x60,0x80,0x88
            S7: next_state <= S8;   //continue with the transmission
            S8: begin
                if((SR == 8'h60)|(SR == 8'h80)|(SR == 8'h88))
                    next_state <= S9;

                else if(((SR == 8'hA8)|(SR == 8'hB8))&(data_count != 4'd5))
                    next_state <= S12;
                else if(((SR == 8'hA8)|(SR == 8'hB8))&(data_count == 4'd5))
                    next_state <= S15;
                else if(SR == 8'hC0)
                    next_state <= S15;

                else if(SR == 8'hA0)
                    next_state <= S0;
                else
                    next_state <= S6;
            end


            S9: next_state <= S10;      //read the Data Register slave address and
            S10: next_state <= S11;     //RX data
            S11: next_state <= S3;

            S12: next_state <= S13;     //write the Data Register slave address and
            S13: next_state <= S14;     //TX data
            S14: next_state <= S3;

            S15: next_state <= S0;
            default: next_state <= S0;
        endcase
    
end

//read or write data from slave core
//if RW_en=1,write data
//if RW_en=0,read data
always@(posedge PCLK or negedge PRESETN)
begin
    if(!PRESETN)
        RW_en <= 1'b0;
    else
        case(current_state)
            S0,S9,S15: RW_en <= 1'b0;
            S12: RW_en <= 1'b1;
            default: RW_en <= RW_en;
        endcase
end

always@(posedge INT or negedge PRESETN)
begin
    if(!PRESETN)
        data_count <= 4'b0;
    else if(data_count == 4'd5)
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
        PWDATA <= 8'h44;
    end

    else
        case(next_state)
            S0,S1,S2: begin
                PADDR <= ADDR0;
                PWDATA <= 8'h0B;
            end

            S3,S4,S5: begin
                PADDR <= CTRL;
                PWDATA <= 8'h44;
            end

            S6,S7,S8: begin
                PADDR <= STAT;
                PWDATA <= 8'h00;
            end

            S9,S10,S11: begin
                PADDR <= DATA;
                PWDATA <= 8'h00;
            end

            S12,S13,S14: begin
                PADDR <= DATA;
                PWDATA <= data_in;
            end

            default: begin
                PADDR <= CTRL;
                PWDATA <= 8'h44;
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
            S0,S1,S3,S4,S12,S13: begin
                PSEL <= 1'b1;
                PWRITE <= 1'b1;
            end

            S6,S7,S9,S10: begin
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
            S1,S4,S7,S10,S13: PENABLE <= 1'b1;
            default: PENABLE <= 1'b0;
        endcase
end


always@(posedge PCLK or negedge PRESETN)
begin
    if(!PRESETN) begin
        data <= 8'b0;
        SR <= 8'b0;
    end

    else
        case(current_state)
            S7: begin
                data <= data;
                SR <= PRDATA;                
            end

            S10: begin
                data <= PRDATA;
                SR <= SR;
            end

            default: begin
                data <= data;
                SR <= SR;
            end
        endcase
end

always@(negedge SCL or negedge PRESETN)
begin
    if(!PRESETN) 
        count <= 4'b0;
    else if(data_count == 4'd5) 
        count <= 4'b0;
    else if(count == 4'd8) 
        count <= 4'd0;
    else 
        count <= count + 1'b1;
end

always@(negedge SCL or negedge PRESETN)
begin
    if(!PRESETN) 
        out_en <= 1'b0;
/***Slave Receiver Mode,send ACK or NACK***/
    else if((count == 4'd8)&(!RW_en))
        out_en <= 1'b1;
/***Slave Transmitter Mode***/
    else if((count != 4'd8)&RW_en)
        out_en <= 1'b1;
    else if((count == 4'd8)&RW_en)
        out_en <= 1'b0;
    else 
        out_en <= 1'b0;
end

assign SDA = out_en ? SDAO:1'bz;
assign SCL = 1'bz;
endmodule

