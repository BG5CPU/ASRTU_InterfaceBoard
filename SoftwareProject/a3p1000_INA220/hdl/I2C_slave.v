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
module I2C_slave     ( input PCLK, 
                       input PRESETN,
                       //APB3 input
                       input PREADY,
                       input PSLVERR,
                       input [7:0]PRDATA, 

                       //core input
                       input [15:0]DATA_IN,
                       input INT,
                       input SCLO,
                       input SDAO,
          
                       //APB3 output
                       output reg [8:0]PADDR,
                       output reg [7:0]PWDATA,
                       output reg PSEL,
                       output reg PENABLE,
                       output reg PWRITE,

                       //core output
                       output reg [23:0]OUT_DATA,
                       output wire SCLI,
                       output wire SDAI,

                       //I2C
                       inout SCL,
                       inout SDA);
//<statements>
reg OUT_EN,RW_EN;
reg [3:0]ACK_count;
reg [4:0]current_state,next_state;
reg [7:0]S_DATA;
reg [15:0]data;

assign SCLI = SCL;
assign SDAI = SDA;

always@(posedge PCLK or negedge PRESETN)
begin
    if(!PRESETN)
        RW_EN <= 1'b0;
    else
        case(current_state)
            S0,S11: RW_EN <= 1'b0;
            S12: RW_EN <= 1'b1;
            default: RW_EN <= RW_EN;
        endcase
end

always@(negedge SCL or negedge PRESETN or posedge INT)
begin
    if(!PRESETN)
        ACK_count <= 8'h0;
    else if(INT)
        ACK_count <= 8'h0;
    else if(ACK_count == 8'd8)
        ACK_count <= 8'h0;
    else
        ACK_count <= ACK_count + 1'b1;
end

always@(negedge SCL or negedge PRESETN)
begin
    if(!PRESETN)
        OUT_EN <= 1'b0;
    else if((ACK_count == 4'd8)&(!RW_EN))
        OUT_EN <= 1'b1;

    else if((ACK_count != 4'd8)&RW_EN)
        OUT_EN <= 1'b1;
    else if((ACK_count == 4'd8)&RW_EN)
        OUT_EN <= 1'b0;
    else
        OUT_EN <= 1'b0;
end

assign SDA = OUT_EN ? SDAO:1'bz;
assign SCL = 1'bz;

parameter   S0 = 5'd0,      //set ADDR0 Register
            S1 = 5'd1,
            S2 = 5'd2,

            S3 = 5'd3,      //set ens1 and aa bits, clear si bit
            S4 = 5'd4,
            S5 = 5'd5,

            S6 = 5'd6,      //Read Data Register
            S7 = 5'd7,
            S8 = 5'd8,

            S9 = 5'd9,      //read the Data Register slave address and
            S10 = 5'd10,    //RX data
            S11 = 5'd11,
            
            S12 = 5'd12,    //write the Data Register slave address and
            S13 = 5'd13,    //TX data
            S14 = 5'd14;

            //S_15 = 5'd15,   //FPGA send STOP signal
            //S_16 = 5'd16,
            //S_17 = 5'd17;

            //S_15 = 5'd16,
            //S_16 = 5'd17,
            //S_17 = 5'd18;        

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

            S3: next_state <= S4;   //set ens1 and aa bits, clear si bit
            S4: next_state <= S5;
            S5: next_state <= S6;
            //S5: next_state <= ((OUT_DATA & 32'hFF00_0000)==32'h0)? S6:S0;


            S6: next_state <= S7;   //Read Data Register
            S7: next_state <= S8;
            //S7: next_state <= (S_DATA == 8'hF8)?S8:S7;
            S8: begin
                case(S_DATA)
                    //I2C Slave Receiver Mode
                    8'h60: next_state <= S11;
                    8'h80,8'h88: next_state <= S9;
                    
                    //I2C Slave Transmitter Mode
                    8'hA8,8'hB8: next_state <= (data == 16'b0)?S0:S12;

                    8'hA0,8'hB0,8'h78: next_state <= S0;
                    default: next_state <= S6;
                endcase
            end
            
            S9: next_state <= S10;  //read the Data Register slave address and
            S10: next_state <= S11; //RX data
            S11: next_state <= S3;
      
            S12: next_state <= S13; //write the Data Register slave address and
            S13: next_state <= S14; //TX data
            S14: next_state <= S3;

            default: next_state <= S0;
        endcase
end

always@(posedge PCLK or negedge PRESETN)
begin
    if(!PRESETN)
        data <= 16'b0;
    else
        case(current_state)
            S0: data <= DATA_IN;
            S14: data <=  data << 4;
            default: data <= data;
        endcase
end

//APB3 address
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
                PWDATA <= (data >> 8);                
            end

            default: begin
                PADDR <= CTRL;
                PWDATA <= 8'h44;
            end
        endcase
end

//APB3 enable
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
        S_DATA <= 8'b0;
        OUT_DATA <= 24'b0;
    end

    else
        case(current_state)
            //S0: begin
                //S_DATA <= 8'b0;
                //OUT_DATA <= 32'b0;
            //end
//
            S7: begin
                S_DATA <= PRDATA;
                OUT_DATA <= OUT_DATA;
            end

            S9:begin
                S_DATA <= S_DATA;
                OUT_DATA <= OUT_DATA << 4;        
            end

            S10: begin
                S_DATA <= S_DATA;
                OUT_DATA <= (OUT_DATA|PRDATA);
            end

            default: begin
                S_DATA <= S_DATA;
                OUT_DATA <= OUT_DATA;
            end
        endcase
end
endmodule
