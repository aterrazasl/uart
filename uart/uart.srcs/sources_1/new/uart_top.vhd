library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use work.uart_package.all;

entity uart_top is
    Port (
        i_clock : in  std_logic;
        uart_rx : in  std_logic;
        uart_tx : out std_logic;
        led0    : out std_logic
    );
end uart_top;

architecture Behavioral of uart_top is

    signal reset            : std_logic;
    signal tx_data          : std_logic_vector(7 downto 0);
    signal tx_data_valid    : std_logic;
    signal tx_ready         : std_logic;
    signal rx_data          : std_logic_vector(7 downto 0);
    signal rx_data_valid    : std_logic;
    signal rx_ready         : std_logic;
    signal rx_line          : std_logic;
    signal tx_line          : std_logic;
    signal reset_count      : unsigned(7 downto 0) := x"ff";
    signal test_count       : unsigned (7 downto 0) := x"00";

    signal rx_data_d          : std_logic_vector(7 downto 0);
    signal rx_data_valid_d    : std_logic;

begin

    -- Mapping pins
    uart_tx <= tx_line;
    rx_line <= uart_rx;
    led0 <= reset;

    RESET_GENERATOR : process (i_clock )is
    begin
        if rising_edge (i_clock ) then

            if(reset_count = 0) then
                reset <= '0';
            else
                reset <='1';
                reset_count <= reset_count -1;
            end if;
        end if;
    end process ;

    --    DATA_GENERATOR : process (i_clock ) is
    --    begin
    --        if falling_edge  (i_clock) then
    --            if (reset = '1') then
    --                test_count <= x"30";
    --            else
    --                if (tx_ready = '1') then
    --                    tx_data <= std_logic_vector (test_count );
    --                    tx_data_valid <= '1';
    --                    if (test_count < x"39") then
    --                        test_count <= test_count +1;
    --                    else
    --                        test_count <= x"30";
    --                    end if;
    --                else
    --                    tx_data_valid <= '0';

    --                end if;
    --            end if;
    --        end if;

    --    end process;




tx_data <= rx_data;
tx_data_valid <= rx_data_valid;
rx_ready <= tx_ready ;


    UART_COMP : uart
        port map (
            reset          => reset ,
            clock          => i_clock,
            --             
            tx_data        => tx_data,
            tx_data_valid  => tx_data_valid ,
            tx_ready       => tx_ready ,
            --             
            rx_data        => rx_data,
            rx_data_valid  => rx_data_valid,
            rx_ready       => rx_ready,
            --             => ,
            rx_line        => rx_line,
            tx_line        => tx_line
        );

end Behavioral;
