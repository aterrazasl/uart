library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

use IEEE.NUMERIC_STD.ALL;

entity uart_rx is
    Port (
        clock           : in std_logic;                   -- 100Mhz clock input
        data_out         : out std_logic_vector (7 downto 0);      -- convert this to parameter lenght
        data_valid      : out std_logic;                   -- data_in is valid
        ready           : in std_logic;                  -- receiver ready
        reset           : in std_logic;                    -- reset the module
        rx_line         : in std_logic
    );
end uart_rx;

architecture Behavioral of uart_rx is
    --#SIGNALS
    type state_machine is (IDLE, START, DATA, PARITY, STOP,VALID);
    signal current_state, next_state :state_machine := IDLE;
    signal data_buffer          : std_logic_vector (7 downto 0) := x"00";
    signal BAUDRATE             : integer := 115200;
    signal data_max             : integer := 8;
    signal baudrate_count       : integer :=0;
    signal baudrate_done        : std_logic;
    signal data_done            : std_logic ;
    signal halfbaudrate_done    : std_logic;
    signal rx_line_i            : std_logic;
    signal data_count           : integer;
    signal rx_line_dly          : std_logic ;


    signal valid_i      : std_logic;

begin

    rx_line_i <= rx_line;
    data_valid <='1' when current_state = VALID  else '0';

    --keeps track of data count
    process (clock)
    begin

        if rising_edge(clock) then
            if(current_state /= next_state ) then
                data_done <='0';
                data_count <= 0;
            else
                if (baudrate_done = '1') then
                    if(data_count = data_max - 1) then
                        data_count <= 0;
                        data_done  <= '1';
                    else
                        data_count <= data_count +1;
                        data_done <= '0';
                    end if;
                end if;
            end if;
        end if;
    end process ;

    -- Generates baudrate clock and half baudrate clock
    process (clock)
    begin
        if rising_edge (clock) then
            if (current_state /= next_state ) then
                baudrate_count          <= 0;
                baudrate_done           <= '0';
                halfbaudrate_done       <= '0';
            elsif  (baudrate_count      >= 100000000/BAUDRATE) then
                baudrate_count      <= 0;
                baudrate_done       <= '1';
            elsif (baudrate_count   = 100000000/(BAUDRATE*2)) then
                halfbaudrate_done    <= '1';
                baudrate_done       <= '0';
                baudrate_count      <= baudrate_count + 1;
            else
                baudrate_count      <= baudrate_count + 1;
                baudrate_done       <= '0';
                halfbaudrate_done   <= '0';
            end if;
        end if;
    end process;


    -- delays rx_line input
    process (clock)
    begin
        if(rising_edge (clock)) then
            rx_line_dly <= rx_line_i;
        end if;
    end process;



    -- State machine
    process (current_state, rx_line_i, halfbaudrate_done, data_done, baudrate_done)
    begin
        case current_state is
            when IDLE =>
                if (rx_line_dly = '1' and rx_line_i = '0') then
                    next_state <= START;
                else
                    next_state <= IDLE;
                end if;

            when START =>
                if(halfbaudrate_done ='1') then
                    next_state <= DATA;
                else
                    next_state <= START;
                end if;

            when DATA  =>
                if(data_done = '1'  and baudrate_done = '1') then
                    next_state <= PARITY;
                else
                    next_state <= DATA;
                end if;

            when PARITY  =>
                if(baudrate_done ='1') then
                    next_state <= STOP ;
                else
                    next_state <= PARITY ;
                end if;

            when STOP =>
                if(baudrate_done ='1') then
                    next_state <= IDLE ;
                else
                    next_state <= VALID;
                end if;
            when VALID =>
                next_state <= IDLE ;
            when others =>
                next_state <= next_state ;
        end case;
    end process;


    -- signals the next state
    process (clock)
    begin
        if (rising_edge (clock)) then
            if reset = '1' then
                current_state  <= IDLE;
            else
                if current_state /= next_state then
                    current_state <= next_state;
                else
                    current_state <= current_state;
                end if;
            end if;
        end if;
    end process;


    -- registers output and valid signals and checks for errors
    process (clock)
    begin
        if rising_edge (clock) then
            case current_state is
                when IDLE =>
                when START =>
                when DATA =>
                    if(next_state = DATA and baudrate_done = '1') then
                        data_buffer <= rx_line_i & data_buffer(7 downto 1);
                    end if;
                when PARITY  =>
                when STOP =>
                    data_out <= data_buffer;
                when VALID =>


            end case;
        end if;
    end process ;



end Behavioral;
