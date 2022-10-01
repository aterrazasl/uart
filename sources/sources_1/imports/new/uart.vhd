
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.uart_package.ALL;


-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity uart is
    Port (
        clock           : in std_logic;                   -- 100Mhz clock input
        data_in         : in std_logic_vector (7 downto 0);      -- convert this to parameter lenght
        data_ready      : in std_logic;                   -- data_in ready to be transmitted
        ready           : out std_logic;                  -- uart ready to send new data
        reset           : in std_logic;                    -- reset the module
        tx_line         : out std_logic
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
    signal wr_rst_busy      :  std_logic := '0';
    signal rd_rst_busy      :  std_logic := '0';
    signal s_aclk_i         : std_logic := '0';



begin

    s_aresetn   <= not reset;
    s_aclk_i    <= clock;

    FIFO_COMP : fifo
        PORT MAP (
            s_aresetn                 => s_aresetn,
            m_axis_tvalid             => m_axis_tvalid,
            m_axis_tready             => m_axis_tready,
            m_axis_tdata              => m_axis_tdata,
            s_axis_tvalid             => data_ready,
            s_axis_tready             => ready,
            s_axis_tdata              => data_in,
            wr_rst_busy               => wr_rst_busy,
            rd_rst_busy               => rd_rst_busy,
            s_aclk                    => s_aclk_i);


    UART_TX_DUT : uart_tx
        port map(
            clock      => s_aclk_i,
            data_in    => m_axis_tdata,
            data_ready => m_axis_tvalid,
            ready      => m_axis_tready,
            reset      => reset,
            tx_line    => tx_line
        );



end Behavioral;
