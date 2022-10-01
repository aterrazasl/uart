

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
    signal uart_tx_ready    : std_logic;
    signal data_in          : std_logic_vector(7 downto 0);
    signal uart_data_ready  : std_logic ;
    signal tx_line_out      : std_logic ;
    signal reset            : std_logic;
    signal i                : integer ;


begin

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
        data_in <= x"00";
        uart_data_ready <='0';
        wait for (clock_period_100M  * 100);
        reset <= '0';
        wait until uart_tx_ready = '1';
        for i in 0 to 127 loop
            data_in <= std_logic_vector(to_unsigned(i, 8));
            --        data_in <= x"EA";
            wait until clock ='1';
            uart_data_ready <='1';
            wait until clock ='1';
            uart_data_ready <='0';
        end loop;

        wait;
    end process;



    DUT_uart_FIFO : uart
        port map (
            clock       => clock,
            data_in     => data_in,
            data_ready  => uart_data_ready,
            ready       => uart_tx_ready,
            reset       => reset,
            tx_line     => tx_line_out
        );



end Behavioral;
