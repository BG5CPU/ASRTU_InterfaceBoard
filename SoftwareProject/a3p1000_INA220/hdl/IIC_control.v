///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: <Name>
//
// File: IIC_control.v
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

module IIC_control( input PCLK, 
                    input PRESETN, 
                    input PREADY,
                    input PSLVERR,
                    input [7:0]PRDATA, 

                    //core input
                    input [7:0]DATA_IN,
                    input INT,
                    input SCLO,
                    input SDAO,
                    input CSN,

                    //APB3 output
                    output reg[8:0]PADDR,
                    output reg[7:0]PWDATA,
                    output reg PSEL,
                    output reg PENABLE,
                    output reg PWRITE,

                    //core output
                    output reg RE,
                    output reg WE,
                    output reg [7:0]INA220_DATA,
                    output wire SCLI,
                    output wire SDAI,

                    //I2C
                    inout SCL,
                    inout SDA);
//<statements>
reg OUT_EN,RW_EN;
reg count_en_R,count_en_W,we_en;
reg [3:0]ACK_count;
reg [4:0]current_state,next_state;
reg [7:0]R_count,W_count,S_DATA;

parameter   IDLE = 5'd0,    //Wait for data from PC

            S0 = 5'd1,      //Set ens1 an sta bits, FPGA send START signal
            S1 = 5'd2,
            S2 = 5'd3,

            S3 = 5'd4,      //Read Data Register
            S4 = 5'd5,
            S5 = 5'd6,

            S6 = 5'd7,      //FPGA send address and data to INA220
            S7 = 5'd8,
            S8 = 5'd9,

            S9 = 5'd10,     //FPGA read data from INA220
            S10 = 5'd11,
            S11 = 5'd12,
            
            S12 = 5'd13,    //Clear si bit and sta bit
            S13 = 5'd14,
            S14 = 5'd15,

            S_15 = 5'd16,   //FPGA send STOP signal
            S_16 = 5'd17,
            S_17 = 5'd18;

assign SCLI = SCL;
assign SDAI = SDA;
assign DATA_EN = (current_state == S_15)?1'b1:1'b0;

//FSM, control core iic to send or write data
always @(posedge PCLK or negedge PRESETN)
begin
    if(!PRESETN)
        current_state <= IDLE;
    else
        current_state <= next_state;
end

always @(posedge PCLK or negedge PRESETN)
begin
    if(!PRESETN)
        next_state <= IDLE;
    else
        case(current_state)
            IDLE: next_state <= (W_count == 8'b0)?IDLE:S0;//if FPGA receive data from PC, send to INA220

            S0: next_state <= S1;   //Set ens1 an sta bits, FPGA send START signal
            S1: next_state <= S2;
            S2: next_state <= S3;

            S3: next_state <= S4;   //Read Data Register
            S4: next_state <= S5;
            S5: begin
                case(S_DATA)
                    //I2C Master Transmitter Mode
                    8'h08: next_state <= S6;
                    8'h18,8'h28: next_state <= (W_count == 8'b0)? S_15:S6;
                    8'h30,8'h20: next_state <= S_15;
                    
                    //I2C Master Receive Mode
                    8'h40: next_state <= S11;
                    8'h50: next_state <= S9;
                    8'h48,8'h58: next_state <= S_15;                    

                    8'h38: next_state <= S0;
                    8'hE0: next_state <= IDLE;
                    default: next_state <= S3;
                endcase
            end

            S6: next_state <= S7;   //FPGA send address and data to INA220
            S7: next_state <= S8;
            S8: next_state <= S12;
            
            S9: next_state <= S10;  //FPGA read data from INA220
            S10: next_state <= S11;
            S11: next_state <= (R_count == 8'b0)? S_15:S12;
      
            S12: next_state <= S13; //Clear si bit and sta bit
            S13: next_state <= S14;
            S14: next_state <= S3;

            S_15: next_state <= S_16;   //FPGA send STOP signal
            S_16: next_state <= S_17;
            S_17: next_state <= S3;
            default: next_state <= S_15;
        endcase
end

//ACK signal
always @(posedge PCLK or negedge PRESETN)
begin
    if(!PRESETN)
        RW_EN <= 1'b1;
    else
        case(current_state)
            IDLE,S6,S_15: RW_EN <= 1'b1;
            S11: RW_EN <= 1'b0;
            default: RW_EN <= RW_EN;
        endcase
end

always @(negedge SCL or negedge PRESETN or posedge INT)
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

always @(negedge SCL or negedge PRESETN)
begin
    if(!PRESETN)
        OUT_EN <= 1'b1;
    else if((ACK_count == 4'd8)&RW_EN)
        OUT_EN <= 1'b0;

    else if((ACK_count == 4'd8)&(!RW_EN))
        OUT_EN <= 1'b1;
    else if((ACK_count != 4'd8)&(!RW_EN))
        OUT_EN <= 1'b0;
    else
        OUT_EN <= 1'b1;
end

assign SDA = OUT_EN ? SDAO:1'bz;
assign SCL = SCLO;

//APB3 address
parameter   CTRL = 9'h00,
            STAT = 9'h04,
            DATA = 9'h08,
            ADDR0 = 9'h0C,
            SMB  = 9'h10,
            ADDR1 = 9'h1C;

//APB3 control
always @(posedge PCLK or negedge PRESETN)
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
                PADDR <= DATA;
                PWDATA <= DATA_IN;
            end

            S9,S10,S11: begin
                PADDR <= DATA;
                PWDATA <= 8'h00;
            end

            S12,S13,S14: begin
                PADDR <= CTRL;
                PWDATA <= 8'h44;                
            end

            S_15,S_16,S_17: begin
                PADDR <= CTRL;
                PWDATA <= 8'h50;
            end

            default: begin
                PADDR <= CTRL;
                PWDATA <= 8'h40;
            end
        endcase
end

always @(posedge PCLK or negedge PRESETN)
begin
    if(!PRESETN) begin
        PSEL <= 1'b0;
        PWRITE <= 1'b0;
    end

    else
        case(next_state)
            S0,S1,S6,S7,S12,S13,S_15,S_16: begin
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

always @(posedge PCLK or negedge PRESETN)
begin
    if(!PRESETN)
        PENABLE <= 1'b0;

    else
        case(next_state)
            S1,S4,S7,S10,S13,S_16: PENABLE <= 1'b1;
            default: PENABLE <= 1'b0;
        endcase
end

//read data and STAT register from iic core
always @(posedge PCLK or negedge PRESETN)
begin
    if(!PRESETN) begin
        S_DATA <= 8'b0;
        INA220_DATA <= 8'b0;
    end

    else
        case(current_state)
            IDLE: begin
                S_DATA <= 8'b0;
                INA220_DATA <= 8'b0;
            end

            S4: begin
                S_DATA <= PRDATA;
                INA220_DATA <= INA220_DATA;
            end

            S10: begin
                S_DATA <= S_DATA;
                INA220_DATA <= PRDATA;
            end

            default: begin
                S_DATA <= S_DATA;
                INA220_DATA <= INA220_DATA;
            end
        endcase
end

//the number of data has been send or read
parameter READ_COUNT = 8'h02,
          WRITE_COUNT = 8'h04;

always @(posedge PCLK or negedge PRESETN)
begin
    if(!PRESETN) begin
        count_en_R <= 1'b0;
        count_en_W <= 1'b0;
        we_en <= 1'b0;
    end

    else
        case(current_state)
            IDLE: begin
                count_en_R <= !count_en_R;
                count_en_W <= !count_en_W;
                we_en <= 1'b0;
            end

            S6: begin
                count_en_R <= 1'b0;
                count_en_W <= 1'b1;
                we_en <= 1'b0;
            end

            S9: begin
                count_en_R <= 1'b1;
                count_en_W <= 1'b0;
                we_en <= 1'b0;
            end

            S10: begin
                count_en_R <= 1'b0;
                count_en_W <= 1'b0;
                we_en <= 1'b1;
            end

            default: begin
                count_en_R <= 1'b0;
                count_en_W <= 1'b0;
                we_en <= 1'b0;
            end
        endcase
end

always @(posedge PCLK or negedge PRESETN)
begin
    if(!PRESETN) begin
        R_count <= 8'b0;
        W_count <= 8'b0;
        RE <= 1'b1;
        WE <= 1'b1;
    end

    else
        case(current_state)
            IDLE: begin
                RE <= 1'b1;
                WE <= 1'b1;

                //if((W_count != 8'b0)&(count_en_W))
                    //WE <= 1'b0;
                //else
                    //WE <= 1'b1;

                if(CSN) begin
                    R_count <= READ_COUNT;
                    W_count <= WRITE_COUNT;
                end

                else begin
                    R_count <= 8'b0;
                    W_count <= W_count;
                end
            end

            S6: begin
                WE <= 1'b1;

                if(count_en_W) begin
                    R_count <= R_count;
                    W_count <= W_count - 1'b1;
                    RE <= 1'b1;
                end

                else begin
                    R_count <= R_count;
                    W_count <= W_count;
                    RE <= 1'b0;
                end
            end

            S9: begin
                RE <= 1'b1;
                WE <= 1'b1;

                if(count_en_R) begin
                    R_count <= R_count - 1'b1;
                    W_count <= W_count;
                end

                else begin
                    R_count <= R_count;
                    W_count <= W_count;
                end
            end

            S10: begin
                R_count <= R_count;
                W_count <= W_count;
                RE <= 1'b1;

                if(we_en)
                    WE <= 1'b0;
                else
                    WE <= 1'b1;
            end

            default: begin
                R_count <= R_count;
                W_count <= W_count;
                RE <= 1'b1;
                WE <= 1'b1;
            end
        endcase
end
endmodule

