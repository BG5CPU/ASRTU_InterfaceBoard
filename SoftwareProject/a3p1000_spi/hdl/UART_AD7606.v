///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: <Name>
//
// File: UART_AD7606.v
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

module UART_AD7606#
(
    parameter DATA_WIDTH = 8
)
(
    input  wire                   clk,
    input  wire                   rst,

    /*
     * UART AXI input
     */
    input  wire [DATA_WIDTH-1:0]  s_axis_tdata,
    input  wire                   s_axis_tvalid,
    output wire                   s_axis_tready,

    /*
     * UART AXI output
     */
    output wire [DATA_WIDTH-1:0]  m_axis_tdata,
    output wire                   m_axis_tvalid,
    input  wire                   m_axis_tready,

    /*
     * SPI FIFO control
     */
    input wire [15:0]             SPI_data,
    input wire                    EMPTY,
    output wire                   RE,
     
    /*
     *UART FIFO control
     */
    output wire                   WE,
    output wire [15:0]            PC_data,

    /*
     *AD7606 control
     */
    //output wire                   convst,
    //output wire                   OS0,
    //output wire                   OS1,
    //output wire                   OS2,
    //output wire

    /*
     * Status
     */
    input wire                    tx_busy,
    input wire                    rx_busy,

    /*
     * Configuration
     */
    output  reg [15:0]            prescale = 16'd651
//    output  reg [DATA_WIDTH-1:0]  PC_data_reg = 0
);

//<statements>

reg s_axis_tready_reg = 0;
reg RE_reg = 1;
reg WE_reg = 1;

reg [DATA_WIDTH-1:0] m_axis_tdata_reg = 0;
reg m_axis_tvalid_reg = 0;

reg [15:0] s_axis_din_tdata_reg = 0;

reg [15:0] PC_data_reg = 0;

reg [4:0] data_count = 0;
reg [4:0] AD_data_count = 0;
reg [1:0] PC_data_count = 0;
reg [1:0] FIFO_count = 0;

assign m_axis_tdata = m_axis_tdata_reg;
assign m_axis_tvalid = m_axis_tvalid_reg;
assign s_axis_tready = s_axis_tready_reg;
assign PC_data = 0;
//assign PC_data = PC_data_reg;
assign RE = RE_reg;
assign WE = WE_reg;
//assign WE = (PC_data_count == 2'd2)? 1'b0:1'b1;

/****decide read data from which chip****/
always@(posedge clk or negedge rst)
begin
    if(!rst) begin
        WE_reg <= 1;
        AD_data_count <= 0;
    end else if(AD_data_count != 0) begin
        AD_data_count <= AD_data_count - 1'b1;
        WE_reg <= 0;      
    end else if(PC_data_reg == 16'h3ABA) begin
        AD_data_count <= 5'd8;
        WE_reg <= 1;
    end else begin
        AD_data_count <= 0;
        WE_reg <= 1;
    end
end

/****read data from spi fifo****/
always@(posedge clk or negedge rst)
begin
    if(!rst) begin
        RE_reg <= 1;
    end else if(!EMPTY & !tx_busy & (data_count == 0)) begin
        RE_reg <= 0;
    end
    else begin
        RE_reg <= 1;
    end
end

always@(posedge clk or negedge rst)
begin
    if(!rst) begin
        FIFO_count <= 0;
    end else if((FIFO_count != 0) | (RE == 0)) begin
        FIFO_count <= FIFO_count + 1'b1;
    end else if(FIFO_count == 2'd3) begin
        FIFO_count <= 0;
    end
    else begin
        FIFO_count <= 0;
    end
end

always@(posedge clk or negedge rst)
begin
    if(!rst) begin
        m_axis_tdata_reg <= 0;
        m_axis_tvalid_reg <= 0; 
        
        s_axis_din_tdata_reg <= 0;
        data_count <= 0;
    end else begin
        if(m_axis_tvalid && m_axis_tready) begin
            m_axis_tvalid_reg <= 0;
        end else if((FIFO_count == 2'd3) && (data_count == 0)) begin
            m_axis_tdata_reg <= 0;
            m_axis_tvalid_reg <= 0; 
            s_axis_din_tdata_reg <= SPI_data;
            data_count <= 5'd2;
            //case(PC_data_reg)
                //8'h10: begin
                    //s_axis_din_tdata_reg <= {8'hFF,6'h00,frequency_data,40'h0};
                    //data_count <= 5'd10;
                //end
                    //
                //8'h11: begin
                    //s_axis_din_tdata_reg <= {8'hFD,phase_data,80'h0};
                    //data_count <= 5'd5;
                //end
                //
                //8'h12: begin
                    //s_axis_din_tdata_reg <= {8'hFF,6'h00,frequency_data,8'hFD,duty_data};
                    //data_count <= 5'd15;
                //end
                //
                //default: begin
                    //s_axis_din_tdata_reg <= 0;
                    //data_count <= 0;                
                //end
            //endcase
        end else if((data_count != 0) && !tx_busy) begin
            m_axis_tdata_reg <= s_axis_din_tdata_reg[15:8];
            m_axis_tvalid_reg <= 1;
            
            s_axis_din_tdata_reg <= s_axis_din_tdata_reg << 8;
            data_count <= data_count - 1;
        end else begin
            m_axis_tdata_reg <= m_axis_tdata_reg;
            m_axis_tvalid_reg <= m_axis_tvalid_reg; 
            
            s_axis_din_tdata_reg <=s_axis_din_tdata_reg;
            data_count <= data_count;            
        end
    end      
end

/***?PC????***/
always@(posedge clk or negedge rst)
begin
    if(!rst) begin
        PC_data_reg <= 0;
        s_axis_tready_reg <= 0;
        PC_data_count <= 0;
    end else if(PC_data_count == 2'd2) begin
        s_axis_tready_reg <= 0;
        PC_data_reg <= 0;
        PC_data_count <= 0;
    end else begin
        s_axis_tready_reg <= 1;
        if(s_axis_tvalid) begin
            PC_data_reg <= {PC_data_reg[7:0],s_axis_tdata};
            PC_data_count <= PC_data_count + 1'b1;
        end
    end
end
endmodule
