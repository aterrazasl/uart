library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;


-- FIFO implementation with fixed depth and 8bit wide
entity fifo is
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
end fifo;

architecture Behavioral of fifo is
    type fifo_type is array (0 to 15) of std_logic_vector (7 downto 0);  -- TODO: add parameters to make FIFO size adjustable
    signal fifo_var : fifo_type;

    signal readptr, writeptr,count : unsigned  (3 downto 0) := x"0"; --"00" & x"00"; --1024 
    signal m_valid_i     : std_logic;
    signal s_ready_i     : std_logic;

begin

    -- Keeps count of FIFO use
    count <= writeptr - readptr;

    -- Data ready to recive when FIFO is not full
    s_ready_i <= '1' when count /= 15 else '0';
    s_axis_tready <=s_ready_i ;

    -- Data output valid when the FIFO is no empty
    m_valid_i <='1' when count /= 0 else '0';
    --    m_axis_tvalid <= m_valid_i ;


    -- tracks the write and read pointers
    process (s_aclk )
    begin
        if rising_edge (s_aclk ) then
            if(s_axis_tvalid ='1' and s_ready_i ='1') then
                writeptr <= writeptr + 1;
            end if;

            if(m_axis_tready ='1' and  m_valid_i ='1') then
                readptr <= readptr +1;
            end if;

        end if;
    end process ;


    -- Single write and read to FIFO memory
    process (s_aclk, s_aresetn)
    begin
        if (s_aresetn = '0') then
            wr_rst_busy     <= '0';
            rd_rst_busy     <= '0';

        elsif(rising_edge (s_aclk))then
            if (m_valid_i ='1') then
                m_axis_tdata <= fifo_var(to_integer (readptr));
                m_axis_tvalid <='1';
            else
                m_axis_tvalid<='0';
            end if;
            if(s_axis_tvalid ='1') then
                fifo_var(to_integer (writeptr)) <= s_axis_tdata;
            end if;
        end if;
    end process;

end Behavioral;
