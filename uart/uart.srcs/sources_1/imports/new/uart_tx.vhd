
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;


entity uart_tx is
    generic(
        BAUDRATE        : integer   := 115200;
        CLOCK_FREQUENCY : integer   := 120000000;
        DATA_WIDTH      : integer   := 8;
        STOP_STATE      : std_logic := '1';
        START_STATE     : std_logic := '0';
        PARITY_ENABLED  : std_logic := '1'
    );
    Port (
        clock           : in std_logic;                   -- 100Mhz clock input
        data_in         : in std_logic_vector (DATA_WIDTH - 1 downto 0);      -- convert this to parameter lenght
        data_ready      : in std_logic;                   -- data_in ready to be transmitted
        ready           : out std_logic;                  -- uart ready to send new data
        reset           : in std_logic;                    -- reset the module
        tx_line         : out std_logic
    );

end uart_tx;

architecture Behavioral of uart_tx is
    --signal BAUDRATE       : integer := 115200 ;    -- convert to signal
    signal baudrate_count : integer := 0;    -- counts the number of clocks for the specified signal
    signal data_count     : integer := 0;    -- counts the number of bits sent
    --signal MAX_DATA       : integer := 8;

    type state_machine is (IDLE, START, DATA, PARITY, STOP);
    signal current_state    : state_machine := IDLE;
    signal next_state       : state_machine := IDLE;
    signal ready_i          : std_logic;
    signal data_ready_i     : std_logic;
    signal baudrate_done    : std_logic := '0';
    signal data_count_done  : std_logic := '0' ;
    signal data_in_i        :std_logic_vector (DATA_WIDTH-1 downto 0) :=x"00";
    signal data_buffer      :std_logic_vector (DATA_WIDTH-1 downto 0) :=x"00";

begin



    data_ready_i <= data_ready;
    --latch data_in when ready
    process(clock)
    begin
        if rising_edge (clock) then
            if (data_ready = '1' and ready_i ='1') then
                data_in_i <= data_in;
            end if;
        end if;
    end process;

    ready <= '1' when current_state = IDLE else '0';
    ready_i <= '1' when current_state = IDLE else '0';



    --Keeps count of the baurate
    process(clock)
    begin
        if rising_edge (clock) then
            if (current_state /= next_state ) then
                baudrate_count <= 0;
                baudrate_done <='0';
            elsif( baudrate_count >= CLOCK_FREQUENCY / BAUDRATE) then
                baudrate_done <='1';
                baudrate_count <= 0;
            else
                baudrate_count <= baudrate_count +1;
                baudrate_done <='0';
            end if;
        end if;
    end process;


    --Keeps count of the data bits
    process(clock)
    begin
        if rising_edge (clock) then

            if (current_state /= next_state ) then
                data_count <= 0;
                data_count_done <='0';
                data_buffer <= data_in_i;
            else
                if (baudrate_done  ='1') then
                    if(data_count = DATA_WIDTH-1) then
                        data_count <= 0;
                        data_count_done <= '1';
                        data_buffer <= data_in_i;
                    else
                        data_count <= data_count +1;
                        data_count_done <= '0';
                        data_buffer <= '0' & data_buffer(DATA_WIDTH - 1 downto 1);
                    end if;

                end if;
            end if;
        end if;
    end process;

    -- State machine process
    process (current_state, data_ready_i, ready_i, baudrate_done)
    begin
        case current_state  is
            when IDLE =>
                if (data_ready_i = '1' and ready_i = '1')then
                    next_state <= START;
                else
                    next_state <= IDLE;
                end if;
            when START =>
                if (baudrate_done= '1')then
                    next_state <= DATA ;
                else
                    next_state <= START;
                end if;
            when DATA =>
                if (baudrate_done = '1' and data_count_done ='1')then
                    if(PARITY_ENABLED = '1') then
                        next_state <= PARITY;
                    else
                        next_state  <= STOP;
                    end if;
                else
                    next_state <= DATA;
                end if;
            when PARITY =>
                if (baudrate_done = '1')then
                    next_state <= STOP;
                else
                    next_state <= PARITY;
                end if;
            when STOP =>
                if (baudrate_done = '1')then
                    next_state <= IDLE;
                else
                    next_state <= STOP;
                end if;
            when others =>
                next_state  <= next_state ;
        end case;
    end process;

    -- State machine next state process
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


    process(current_state,baudrate_done)
    begin
        case current_state  is
            when IDLE =>
                tx_line <= STOP_STATE;
            when START =>
                tx_line <= START_STATE;
            when DATA =>
                tx_line <= data_buffer(0) ;
            when PARITY =>
                tx_line <= not data_in_i(0);
            when STOP =>
                tx_line <= STOP_STATE;
            when others =>
                tx_line <= STOP_STATE;
        end case;

    end process;


end Behavioral;
