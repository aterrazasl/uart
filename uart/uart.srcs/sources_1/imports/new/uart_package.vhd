
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;



package uart_package is

    constant clock_period_100M : time := 10 ns;


    component uart is
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
    end component;


    component uart_tx
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
    end component;

    component uart_rx is
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
            data_out        : out std_logic_vector (DATA_WIDTH - 1 downto 0);      -- convert this to parameter lenght
            data_valid      : out std_logic;                   -- data_in is valid
            ready           : in std_logic;                  -- receiver ready
            reset           : in std_logic;                    -- reset the module
            rx_line         : in std_logic
        );
    end component;


    --    component tx_fifo is
    --        PORT (
    --            s_aresetn                 : IN  std_logic := '0';
    --            m_axis_tvalid             : OUT std_logic := '0';
    --            m_axis_tready             : IN  std_logic := '0';
    --            m_axis_tdata              : OUT std_logic_vector(8-1 DOWNTO 0) := (OTHERS => '0');
    --            s_axis_tvalid             : IN  std_logic := '0';
    --            s_axis_tready             : OUT std_logic := '0';
    --            s_axis_tdata              : IN  std_logic_vector(8-1 DOWNTO 0) := (OTHERS => '0');
    --            wr_rst_busy               : OUT  std_logic := '0';
    --            rd_rst_busy               : OUT  std_logic := '0';
    --            s_aclk                    : IN  std_logic := '0');

    --    end component;


    component fifo is
        Port (
            s_aresetn                 : IN  std_logic := '0';
            m_axis_tvalid             : OUT std_logic := '0';
            m_axis_tready             : IN  std_logic := '0';
            m_axis_tdata              : OUT std_logic_vector(7 downto 0);
            s_axis_tvalid             : IN  std_logic := '0';
            s_axis_tready             : OUT std_logic := '0';
            s_axis_tdata              : IN  std_logic_vector(7 downto 0);
            wr_rst_busy               : OUT  std_logic := '0';
            rd_rst_busy               : OUT  std_logic := '0';
            s_aclk                    : IN  std_logic := '0'
        );
    end component;

end package uart_package;