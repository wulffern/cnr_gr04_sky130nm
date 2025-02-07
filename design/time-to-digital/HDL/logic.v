module controller
#(parameter COUNT_TIME_BITS = 16
)(
    input reg clk, rst, start, pulse_counter_full,
    output wire ready, clear, running
);
    localparam WIDTH = COUNT_TIME_BITS -1;

    localparam IDLE      = 2'b00;
    localparam STARTING  = 2'b01;
    localparam RUNNING   = 2'b10;

    reg [WIDTH:0] count_time;
    reg [1:0] state;

    always @(posedge clk) begin
        if (rst) begin
            state <= IDLE;
            count_time <= {COUNT_TIME_BITS{1'b0}};
        end else begin
            state <= state;
            count_time <= count_time;
            case (state)
                IDLE: begin
                    if (start) begin
                        state <= STARTING;
                    end
                end
                STARTING: begin
                    state <= RUNNING;
                    count_time <= {COUNT_TIME_BITS{1'b0}};
                end
                RUNNING: begin
                    if(pulse_counter_full==1'b1) begin
                        state <= IDLE;
                        $display("\t\t\t\t count_time: dec:%d \t bin:%b", count_time, count_time);
                    end else begin
                        count_time <= count_time + 1;
                    end
                end
                default: state <= IDLE; //The clock period for the design.
            endcase
        end
    end

    assign ready    = (state == IDLE);
    assign clear    = (state == STARTING);
    assign running  = (state == RUNNING);
endmodule
    


module synchronizer
#(  parameter SYNC_BITS = 3
)(
    input reg clk, rst, data_in,
    output wire data_out
);
    localparam WIDTH = SYNC_BITS -1;
    reg [WIDTH:0] sync_buffer;

    always @(posedge clk) begin
        if (rst==1'b1) begin
            sync_buffer <= {SYNC_BITS{1'b0}};
        end else begin
            sync_buffer <= {sync_buffer[WIDTH-1:0], data_in};
        end
        
    end
    assign data_out = sync_buffer[WIDTH];
endmodule

module debounce
#(
    parameter DEBOUNCE_BITS = 3
)(
    input reg clk, rst, data_in,
    output wire data_out
);
    localparam WIDTH = DEBOUNCE_BITS -1;
    reg [WIDTH:0] debounce_buffer;

    always @(posedge clk or posedge rst) begin
        if (rst==1'b1) begin
            debounce_buffer <= {DEBOUNCE_BITS{1'b0}};
        end else begin
            debounce_buffer <= {debounce_buffer[WIDTH-1:0], data_in};
        end
        
    end
    assign data_out = (debounce_buffer == {DEBOUNCE_BITS{1'b1}});  
endmodule

module edge_detector
#(  parameter RESET_COUNTER_BITS = 2)(
    input reg clk, rst, data_in,
    output wire data_out, temp_reset
);
    localparam WIDTH = RESET_COUNTER_BITS -1;

    localparam IDLE = 2'b00;
    localparam EDGE_DETECTED = 2'b01;
    localparam RESET = 2'b10;

    reg [1:0] state;
    reg [1:0] input_buffer;
    reg [WIDTH:0] reset_counter;

    always @(posedge clk) begin
        if (rst==1'b1) begin
            input_buffer <= 2'b00;
            reset_counter <= {RESET_COUNTER_BITS{1'b0}};
            state <= IDLE;
        end else begin
            state <= state;
            reset_counter <= reset_counter;
            case(state)
            IDLE: begin
                input_buffer <= {input_buffer[0], data_in};
                reset_counter <= {RESET_COUNTER_BITS{1'b0}};
                if(input_buffer == 2'b01) begin
                    state <= EDGE_DETECTED;
                end
            end
            EDGE_DETECTED: begin
                $display("\t\t\t\t edge detected");
                state <= RESET;
            end
            RESET: begin
                
                if(reset_counter == {RESET_COUNTER_BITS{1'b1}}) begin
                    state <= IDLE;
                    $display("\t\t\t\t reset");
                end else begin
                    reset_counter <= reset_counter + 1;
                end
            end
            default: state <= IDLE;
            endcase
        end
        
    end
    assign temp_reset   = (state == RESET);
    assign data_out     = (state == EDGE_DETECTED);
endmodule

module counter
#(  parameter COUNTER_MAX = 10 )(
    input reg  clk, rst, inc, clear, en,
    output wire counter_full,
    output wire [WIDTH:0] count_out
);
    localparam COUNTER_BITS = $clog2(COUNTER_MAX);
    localparam WIDTH = COUNTER_BITS -1;
    //localparam WIDTH = 31;
    reg [WIDTH:0] counter;

    always @(posedge clk) begin
        counter <= counter;
        if (rst==1'b1 || clear==1'b1) begin
            counter <= {COUNTER_BITS{1'b0}};
        end else begin


            if (en==1 && inc==1)begin
                if (counter == COUNTER_MAX-1) begin
                    counter <= {COUNTER_BITS{1'b0}};
                end else begin
                    counter <= counter + 1;
                    $display("\t\t\t\t pulse count: dec:%d \t bin:%b", counter, counter);
                end
            end      
        
        end
    end
    assign counter_full     = (counter == COUNTER_MAX-1);
    assign count_out        = counter;
endmodule


/* module counter
#(  parameter COUNTER_BITS = 8 )(
    input reg  clk, rst, inc, clear, en,
    output wire [WIDTH:0] count_out
);
    localparam WIDTH = COUNTER_BITS -1;
    reg [WIDTH:0] counter;

    always @(posedge clk or posedge rst) begin
        counter <= counter;
        if (rst==1'b1) begin
            counter <= {COUNTER_BITS{1'b0}};
        end else begin

            if (clear) begin
                counter <= {COUNTER_BITS{1'b0}};
            end else if (en==1 && inc==1) begin
                counter <= counter + 1;
            end
        end
        
    end
    assign count_out = counter;
endmodule */