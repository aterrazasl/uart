
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.uart_package.ALL;
use IEEE.NUMERIC_STD.ALL;


entity uart is
    Port (
        reset           : in std_logic;                      -- reset the module`
        clock           : in std_logic;                      -- 100Mhz clock input
        --
        tx_data         : in std_logic_vector (7 downto 0);  -- data to transmit
        tx_data_valid   : in std_logic;                      -- tx_data is valid
        tx_ready        : out std_logic;                     -- uart ready to send new data
        --
        rx_data         : out std_logic_vector (7 downto 0); -- received data
        rx_data_valid   : out std_logic;                     -- rx_data is valid
        rx_ready        : in std_logic;                      -- master ready 
        --
        rx_line         : in std_logic;                      -- physical pin from RX
        tx_line         : out std_logic                      -- physical pin to TX
    );
end uart;

architecture Behavioral of uart is

    signal s_aresetn        : std_logic := '0';
    signal m_axis_tvalid    : std_logic := '0';
    signal m_axis_tready    : std_logic := '0';
    signal m_axis_tdata     : std_logic_vector(8-1 DOWNTO 0) := (OTHERS => '0');
    signal s_axis_tvalid    : std_logic := '0';
    signal s_axis_tready    : std_logic := '0';
    signal s_axis_tdata     : std_logic_vector(8-1 DOWNTO 0) := (OTHERS => '0');
    signal wr_rst_busy      : std_logic := '0';
    signal rd_rst_busy      : std_logic := '0';
    signal rx_wr_rst_busy      : std_logic := '0';
    signal rx_rd_rst_busy      : std_logic := '0';
    signal s_aclk_i         : std_logic := '0';
    constant CLOCK_MHZ      : integer := 125000000;



begin

    s_aresetn   <= not reset;
    s_aclk_i    <= clock;

    FIFO_TX_COMP : fifo
        PORT MAP (
            s_aresetn                 => s_aresetn,
            m_axis_tvalid             => m_axis_tvalid,
            m_axis_tready             => m_axis_tready,
            m_axis_tdata              => m_axis_tdata,
            s_axis_tvalid             => tx_data_valid,
            s_axis_tready             => tx_ready,
            s_axis_tdata              => tx_data,
            wr_rst_busy               => wr_rst_busy,
            rd_rst_busy               => rd_rst_busy,
            s_aclk                    => s_aclk_i);


    UART_TX_COMP : uart_tx
        generic map(
            CLOCK_FREQUENCY => CLOCK_MHZ,
            PARITY_ENABLED => '0'
        )
        port map(
            clock      => s_aclk_i,
            data_in    => m_axis_tdata,
            data_ready => m_axis_tvalid,
            ready      => m_axis_tready,
            reset      => reset,
            tx_line    => tx_line
        );


    FIFO_RX_COMP : fifo
        PORT MAP (
            s_aresetn                 => s_aresetn,
            m_axis_tvalid             => rx_data_valid,
            m_axis_tready             => rx_ready,
            m_axis_tdata              => rx_data,
            s_axis_tvalid             => s_axis_tvalid,
            s_axis_tready             => s_axis_tready,
            s_axis_tdata              => s_axis_tdata,
            wr_rst_busy               => rx_wr_rst_busy,
            rd_rst_busy               => rx_rd_rst_busy,
            s_aclk                    => s_aclk_i);



    UART_RX_COMP : uart_rx
        generic map(
            CLOCK_FREQUENCY => CLOCK_MHZ,
            PARITY_ENABLED => '0'
        )
        port map(
            clock       => s_aclk_i,
            data_out    => s_axis_tdata,
            data_valid  => s_axis_tvalid,
            ready       => s_axis_tready,
            reset       => reset,
            rx_line     => rx_line
        );

end Behavioral;
