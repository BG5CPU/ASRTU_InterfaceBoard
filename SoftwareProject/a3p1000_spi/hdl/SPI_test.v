///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: <Name>
//
// File: SPI_master.v
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

module SPI_test( input PCLK,
                   input PRESETN,
                   input PREADY,
                   input PSLVERR,
                   input [15:0]PRDATA,
                   input [15:0]data_in,
                   input SPIRXAVAIL,
                   input SPITXRFM,
                   output reg PSEL,
                   output reg PENABLE,
                   output reg PWRITE,
                   output reg[15:0]PWDATA,
                   output reg[31:0]PADDR,
                   output reg[15:0]data);

//<statements>
parameter CONTROL   = 7'h00,
          INTCLEAR  = 7'h04,
          RXDATA    = 7'h08,
          TXDATA    = 7'h0C,
          INTMASK   = 7'h10,
          INTRAW    = 7'h14,
          CONTROL2  = 7'h18,
          COMMAND   = 7'h1C,
          STAT      = 7'h20,
          SSEL      = 7'h24,
          TXDATA_LAST   = 7'h28,
          CLK_DIV   = 7'h2C;

parameter S0 = 4'd0,    //initial the coreSPI
          S1 = 4'd1,
          S2 = 4'd2,
          S3 = 4'd3,    //read data from RX FIFO   
          S4 = 4'd4,
          S5 = 4'd5,
          S6 = 4'd6,    //transfer data to TX FIFO
          S7 = 4'd7,
          S8 = 4'd8;

reg [3:0]current_state, next_state;

always@(posedge PCLK or negedge PRESETN)
begin
    if(!PRESETN)
        current_state <= S0;
    else
        current_state <= next_state;
end

always@*
begin
    if(!PRESETN)
        next_state <= S0;
    else
        case(current_state)
            S0: next_state <= S1;
            S1: next_state <= S2;
            S2: next_state <= S3;
            S3: next_state <= S4;
            S4: next_state <= S5;
            S5: next_state <= S6;
            S6: next_state <= S7;
            S7: next_state <= S8;
            S8: next_state <= S0;
            default: next_state <= S0;
        endcase
end

always@(posedge PCLK or negedge PRESETN)
begin
    if(!PRESETN) begin
        PADDR <= CONTROL;
        PWDATA <= 8'h03;
    end

    else
        case(next_state)
            S0,S1,S2: begin
                PADDR <= CONTROL;
                PWDATA <= 8'h03;
            end

            S3,S4,S5: begin
                PADDR <= RXDATA;
                PWDATA <= 8'h00;
            end

            S6,S7,S8: begin
                PADDR <= TXDATA;
                PWDATA <= data_in;
            end

            //S6,S7,S8: begin
                //PADDR <= CONTROL;
                //PWDATA <= 8'h03;
            //end

            default: begin
                PADDR <= CONTROL;
                PWDATA <= 8'h03;
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
        S0,S1,S6,S7: begin
            PSEL <= 1'b1;
            PWRITE <= 1'b1;
        end

        S3,S4: begin
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
    if(!PRESETN) begin
        PENABLE <= 1'b0;
        data <= 8'h00;
    end

    else
        case(next_state)
        S1,S7: begin
            PENABLE <= 1'b1;
            data <= data;
        end
        
        S4: begin
            PENABLE <= 1'b1;
            data <= PRDATA;
        end

        default: begin
            PENABLE <= 1'b0;
            data <= data;
        end
        endcase
end

endmodule

