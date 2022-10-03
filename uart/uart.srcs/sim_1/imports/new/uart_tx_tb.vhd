

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;
use work.uart_package.all;

entity uart_tx_tb is
    --  Port ( );
end uart_tx_tb;

architecture Behavioral of uart_tx_tb is
    signal clock            : std_logic;
    signal tx_ready    : std_logic;
    signal tx_data          : std_logic_vector(7 downto 0);
    signal tx_data_valid    : std_logic ;
    signal rx_ready    : std_logic;
    signal rx_data          : std_logic_vector(7 downto 0);
    signal rx_data_valid    : std_logic ;
    signal tx_line          : std_logic ;
    signal rx_line          : std_logic ;
    signal reset            : std_logic;
    signal i                : integer ;

begin

    -- loopback
    rx_line <= tx_line ;

    ---- Clock Generation
    GENERATE_CLOCK100M: process
    begin
        wait for (clock_period_100M  / 2);
        clock <= '1';
        wait for (clock_period_100M / 2);
        clock <= '0';
    end process;

    GENERATE_RESET: process
    begin
        reset <= '1';
        tx_data <= x"00";
        tx_data_valid <='0';
        wait for (clock_period_100M  * 100);
        reset <= '0';
        
        rx_ready <= '1';
        
        --wait until uart_tx_ready = '1';
        for i in 0 to 127 loop
            if(tx_ready ='0') then
                wait until tx_ready ='1';
            end if;

            tx_data <= std_logic_vector(to_unsigned(i, 8));
            --        tx_data <= x"EA";
            wait until clock ='1';
            tx_data_valid <='1';
            wait until clock ='1';
            tx_data_valid <='0';
        end loop;

        wait;
    end process;



    DUT_uart_FIFO : uart
        port map (
            reset          => reset ,
            clock          => clock,
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
