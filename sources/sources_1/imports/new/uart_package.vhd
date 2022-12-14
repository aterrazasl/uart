
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;



package uart_package is

    constant clock_period_100M : time := 10 ns;


    component uart_tx
        Port (
            clock           : in std_logic;                   -- 100Mhz clock input
            data_in         : in std_logic_vector (7 downto 0);      -- convert this to parameter lenght
            data_ready      : in std_logic;                   -- data_in ready to be transmitted
            ready           : out std_logic;                  -- uart ready to send new data
            reset           : in std_logic;                    -- reset the module
            tx_line         : out std_logic
        );
    end component;


    component uart is
        Port (
            clock           : in std_logic;                   -- 100Mhz clock input
            data_in         : in std_logic_vector (7 downto 0);      -- convert this to parameter lenght
            data_ready      : in std_logic;                   -- data_in ready to be transmitted
            ready           : out std_logic;                  -- uart ready to send new data
            reset           : in std_logic;                    -- reset the module
            tx_line         : out std_logic
        );
    end component;


    component tx_fifo is
        PORT (
            s_aresetn                 : IN  std_logic := '0';
            m_axis_tvalid             : OUT std_logic := '0';
            m_axis_tready             : IN  std_logic := '0';
            m_axis_tdata              : OUT std_logic_vector(8-1 DOWNTO 0) := (OTHERS => '0');
            s_axis_tvalid             : IN  std_logic := '0';
            s_axis_tready             : OUT std_logic := '0';
            s_axis_tdata              : IN  std_logic_vector(8-1 DOWNTO 0) := (OTHERS => '0');
            wr_rst_busy               : OUT  std_logic := '0';
            rd_rst_busy               : OUT  std_logic := '0';
            s_aclk                    : IN  std_logic := '0');

    end component;


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