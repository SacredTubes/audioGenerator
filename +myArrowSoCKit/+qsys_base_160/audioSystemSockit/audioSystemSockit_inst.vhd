	component audioSystemSockit is
		port (
			audio_pll_0_audio_clk_clk         : out   std_logic;                                        -- clk
			hps_io_hps_io_emac1_inst_TX_CLK   : out   std_logic;                                        -- hps_io_emac1_inst_TX_CLK
			hps_io_hps_io_emac1_inst_TXD0     : out   std_logic;                                        -- hps_io_emac1_inst_TXD0
			hps_io_hps_io_emac1_inst_TXD1     : out   std_logic;                                        -- hps_io_emac1_inst_TXD1
			hps_io_hps_io_emac1_inst_TXD2     : out   std_logic;                                        -- hps_io_emac1_inst_TXD2
			hps_io_hps_io_emac1_inst_TXD3     : out   std_logic;                                        -- hps_io_emac1_inst_TXD3
			hps_io_hps_io_emac1_inst_RXD0     : in    std_logic                     := 'X';             -- hps_io_emac1_inst_RXD0
			hps_io_hps_io_emac1_inst_MDIO     : inout std_logic                     := 'X';             -- hps_io_emac1_inst_MDIO
			hps_io_hps_io_emac1_inst_MDC      : out   std_logic;                                        -- hps_io_emac1_inst_MDC
			hps_io_hps_io_emac1_inst_RX_CTL   : in    std_logic                     := 'X';             -- hps_io_emac1_inst_RX_CTL
			hps_io_hps_io_emac1_inst_TX_CTL   : out   std_logic;                                        -- hps_io_emac1_inst_TX_CTL
			hps_io_hps_io_emac1_inst_RX_CLK   : in    std_logic                     := 'X';             -- hps_io_emac1_inst_RX_CLK
			hps_io_hps_io_emac1_inst_RXD1     : in    std_logic                     := 'X';             -- hps_io_emac1_inst_RXD1
			hps_io_hps_io_emac1_inst_RXD2     : in    std_logic                     := 'X';             -- hps_io_emac1_inst_RXD2
			hps_io_hps_io_emac1_inst_RXD3     : in    std_logic                     := 'X';             -- hps_io_emac1_inst_RXD3
			hps_io_hps_io_sdio_inst_CMD       : inout std_logic                     := 'X';             -- hps_io_sdio_inst_CMD
			hps_io_hps_io_sdio_inst_D0        : inout std_logic                     := 'X';             -- hps_io_sdio_inst_D0
			hps_io_hps_io_sdio_inst_D1        : inout std_logic                     := 'X';             -- hps_io_sdio_inst_D1
			hps_io_hps_io_sdio_inst_CLK       : out   std_logic;                                        -- hps_io_sdio_inst_CLK
			hps_io_hps_io_sdio_inst_D2        : inout std_logic                     := 'X';             -- hps_io_sdio_inst_D2
			hps_io_hps_io_sdio_inst_D3        : inout std_logic                     := 'X';             -- hps_io_sdio_inst_D3
			hps_io_hps_io_usb1_inst_D0        : inout std_logic                     := 'X';             -- hps_io_usb1_inst_D0
			hps_io_hps_io_usb1_inst_D1        : inout std_logic                     := 'X';             -- hps_io_usb1_inst_D1
			hps_io_hps_io_usb1_inst_D2        : inout std_logic                     := 'X';             -- hps_io_usb1_inst_D2
			hps_io_hps_io_usb1_inst_D3        : inout std_logic                     := 'X';             -- hps_io_usb1_inst_D3
			hps_io_hps_io_usb1_inst_D4        : inout std_logic                     := 'X';             -- hps_io_usb1_inst_D4
			hps_io_hps_io_usb1_inst_D5        : inout std_logic                     := 'X';             -- hps_io_usb1_inst_D5
			hps_io_hps_io_usb1_inst_D6        : inout std_logic                     := 'X';             -- hps_io_usb1_inst_D6
			hps_io_hps_io_usb1_inst_D7        : inout std_logic                     := 'X';             -- hps_io_usb1_inst_D7
			hps_io_hps_io_usb1_inst_CLK       : in    std_logic                     := 'X';             -- hps_io_usb1_inst_CLK
			hps_io_hps_io_usb1_inst_STP       : out   std_logic;                                        -- hps_io_usb1_inst_STP
			hps_io_hps_io_usb1_inst_DIR       : in    std_logic                     := 'X';             -- hps_io_usb1_inst_DIR
			hps_io_hps_io_usb1_inst_NXT       : in    std_logic                     := 'X';             -- hps_io_usb1_inst_NXT
			hps_io_hps_io_spim0_inst_CLK      : out   std_logic;                                        -- hps_io_spim0_inst_CLK
			hps_io_hps_io_spim0_inst_MOSI     : out   std_logic;                                        -- hps_io_spim0_inst_MOSI
			hps_io_hps_io_spim0_inst_MISO     : in    std_logic                     := 'X';             -- hps_io_spim0_inst_MISO
			hps_io_hps_io_spim0_inst_SS0      : out   std_logic;                                        -- hps_io_spim0_inst_SS0
			hps_io_hps_io_spim1_inst_CLK      : out   std_logic;                                        -- hps_io_spim1_inst_CLK
			hps_io_hps_io_spim1_inst_MOSI     : out   std_logic;                                        -- hps_io_spim1_inst_MOSI
			hps_io_hps_io_spim1_inst_MISO     : in    std_logic                     := 'X';             -- hps_io_spim1_inst_MISO
			hps_io_hps_io_spim1_inst_SS0      : out   std_logic;                                        -- hps_io_spim1_inst_SS0
			hps_io_hps_io_uart0_inst_RX       : in    std_logic                     := 'X';             -- hps_io_uart0_inst_RX
			hps_io_hps_io_uart0_inst_TX       : out   std_logic;                                        -- hps_io_uart0_inst_TX
			hps_io_hps_io_i2c1_inst_SDA       : inout std_logic                     := 'X';             -- hps_io_i2c1_inst_SDA
			hps_io_hps_io_i2c1_inst_SCL       : inout std_logic                     := 'X';             -- hps_io_i2c1_inst_SCL
			i2s_ssm2603_0_bit_clock_pin       : in    std_logic                     := 'X';             -- pin
			i2s_ssm2603_0_pbclk_pin           : in    std_logic                     := 'X';             -- pin
			i2s_ssm2603_0_reclk_pin           : in    std_logic                     := 'X';             -- pin
			i2s_ssm2603_0_serial_data_in_pin  : in    std_logic                     := 'X';             -- pin
			i2s_ssm2603_0_serial_data_out_pin : out   std_logic;                                        -- pin
			memory_mem_a                      : out   std_logic_vector(12 downto 0);                    -- mem_a
			memory_mem_ba                     : out   std_logic_vector(2 downto 0);                     -- mem_ba
			memory_mem_ck                     : out   std_logic;                                        -- mem_ck
			memory_mem_ck_n                   : out   std_logic;                                        -- mem_ck_n
			memory_mem_cke                    : out   std_logic;                                        -- mem_cke
			memory_mem_cs_n                   : out   std_logic;                                        -- mem_cs_n
			memory_mem_ras_n                  : out   std_logic;                                        -- mem_ras_n
			memory_mem_cas_n                  : out   std_logic;                                        -- mem_cas_n
			memory_mem_we_n                   : out   std_logic;                                        -- mem_we_n
			memory_mem_reset_n                : out   std_logic;                                        -- mem_reset_n
			memory_mem_dq                     : inout std_logic_vector(7 downto 0)  := (others => 'X'); -- mem_dq
			memory_mem_dqs                    : inout std_logic                     := 'X';             -- mem_dqs
			memory_mem_dqs_n                  : inout std_logic                     := 'X';             -- mem_dqs_n
			memory_mem_odt                    : out   std_logic;                                        -- mem_odt
			memory_mem_dm                     : out   std_logic;                                        -- mem_dm
			memory_oct_rzqin                  : in    std_logic                     := 'X';             -- oct_rzqin
			pll_0_refclk_clk                  : in    std_logic                     := 'X';             -- clk
			i2c_ssm2603_0_i2c_clk_pin         : out   std_logic;                                        -- pin
			i2c_ssm2603_0_i2c_data_pin        : inout std_logic                     := 'X';             -- pin
			i2c_ssm2603_0_muten_pin           : out   std_logic                                         -- pin
		);
	end component audioSystemSockit;

	u0 : component audioSystemSockit
		port map (
			audio_pll_0_audio_clk_clk         => CONNECTED_TO_audio_pll_0_audio_clk_clk,         --         audio_pll_0_audio_clk.clk
			hps_io_hps_io_emac1_inst_TX_CLK   => CONNECTED_TO_hps_io_hps_io_emac1_inst_TX_CLK,   --                        hps_io.hps_io_emac1_inst_TX_CLK
			hps_io_hps_io_emac1_inst_TXD0     => CONNECTED_TO_hps_io_hps_io_emac1_inst_TXD0,     --                              .hps_io_emac1_inst_TXD0
			hps_io_hps_io_emac1_inst_TXD1     => CONNECTED_TO_hps_io_hps_io_emac1_inst_TXD1,     --                              .hps_io_emac1_inst_TXD1
			hps_io_hps_io_emac1_inst_TXD2     => CONNECTED_TO_hps_io_hps_io_emac1_inst_TXD2,     --                              .hps_io_emac1_inst_TXD2
			hps_io_hps_io_emac1_inst_TXD3     => CONNECTED_TO_hps_io_hps_io_emac1_inst_TXD3,     --                              .hps_io_emac1_inst_TXD3
			hps_io_hps_io_emac1_inst_RXD0     => CONNECTED_TO_hps_io_hps_io_emac1_inst_RXD0,     --                              .hps_io_emac1_inst_RXD0
			hps_io_hps_io_emac1_inst_MDIO     => CONNECTED_TO_hps_io_hps_io_emac1_inst_MDIO,     --                              .hps_io_emac1_inst_MDIO
			hps_io_hps_io_emac1_inst_MDC      => CONNECTED_TO_hps_io_hps_io_emac1_inst_MDC,      --                              .hps_io_emac1_inst_MDC
			hps_io_hps_io_emac1_inst_RX_CTL   => CONNECTED_TO_hps_io_hps_io_emac1_inst_RX_CTL,   --                              .hps_io_emac1_inst_RX_CTL
			hps_io_hps_io_emac1_inst_TX_CTL   => CONNECTED_TO_hps_io_hps_io_emac1_inst_TX_CTL,   --                              .hps_io_emac1_inst_TX_CTL
			hps_io_hps_io_emac1_inst_RX_CLK   => CONNECTED_TO_hps_io_hps_io_emac1_inst_RX_CLK,   --                              .hps_io_emac1_inst_RX_CLK
			hps_io_hps_io_emac1_inst_RXD1     => CONNECTED_TO_hps_io_hps_io_emac1_inst_RXD1,     --                              .hps_io_emac1_inst_RXD1
			hps_io_hps_io_emac1_inst_RXD2     => CONNECTED_TO_hps_io_hps_io_emac1_inst_RXD2,     --                              .hps_io_emac1_inst_RXD2
			hps_io_hps_io_emac1_inst_RXD3     => CONNECTED_TO_hps_io_hps_io_emac1_inst_RXD3,     --                              .hps_io_emac1_inst_RXD3
			hps_io_hps_io_sdio_inst_CMD       => CONNECTED_TO_hps_io_hps_io_sdio_inst_CMD,       --                              .hps_io_sdio_inst_CMD
			hps_io_hps_io_sdio_inst_D0        => CONNECTED_TO_hps_io_hps_io_sdio_inst_D0,        --                              .hps_io_sdio_inst_D0
			hps_io_hps_io_sdio_inst_D1        => CONNECTED_TO_hps_io_hps_io_sdio_inst_D1,        --                              .hps_io_sdio_inst_D1
			hps_io_hps_io_sdio_inst_CLK       => CONNECTED_TO_hps_io_hps_io_sdio_inst_CLK,       --                              .hps_io_sdio_inst_CLK
			hps_io_hps_io_sdio_inst_D2        => CONNECTED_TO_hps_io_hps_io_sdio_inst_D2,        --                              .hps_io_sdio_inst_D2
			hps_io_hps_io_sdio_inst_D3        => CONNECTED_TO_hps_io_hps_io_sdio_inst_D3,        --                              .hps_io_sdio_inst_D3
			hps_io_hps_io_usb1_inst_D0        => CONNECTED_TO_hps_io_hps_io_usb1_inst_D0,        --                              .hps_io_usb1_inst_D0
			hps_io_hps_io_usb1_inst_D1        => CONNECTED_TO_hps_io_hps_io_usb1_inst_D1,        --                              .hps_io_usb1_inst_D1
			hps_io_hps_io_usb1_inst_D2        => CONNECTED_TO_hps_io_hps_io_usb1_inst_D2,        --                              .hps_io_usb1_inst_D2
			hps_io_hps_io_usb1_inst_D3        => CONNECTED_TO_hps_io_hps_io_usb1_inst_D3,        --                              .hps_io_usb1_inst_D3
			hps_io_hps_io_usb1_inst_D4        => CONNECTED_TO_hps_io_hps_io_usb1_inst_D4,        --                              .hps_io_usb1_inst_D4
			hps_io_hps_io_usb1_inst_D5        => CONNECTED_TO_hps_io_hps_io_usb1_inst_D5,        --                              .hps_io_usb1_inst_D5
			hps_io_hps_io_usb1_inst_D6        => CONNECTED_TO_hps_io_hps_io_usb1_inst_D6,        --                              .hps_io_usb1_inst_D6
			hps_io_hps_io_usb1_inst_D7        => CONNECTED_TO_hps_io_hps_io_usb1_inst_D7,        --                              .hps_io_usb1_inst_D7
			hps_io_hps_io_usb1_inst_CLK       => CONNECTED_TO_hps_io_hps_io_usb1_inst_CLK,       --                              .hps_io_usb1_inst_CLK
			hps_io_hps_io_usb1_inst_STP       => CONNECTED_TO_hps_io_hps_io_usb1_inst_STP,       --                              .hps_io_usb1_inst_STP
			hps_io_hps_io_usb1_inst_DIR       => CONNECTED_TO_hps_io_hps_io_usb1_inst_DIR,       --                              .hps_io_usb1_inst_DIR
			hps_io_hps_io_usb1_inst_NXT       => CONNECTED_TO_hps_io_hps_io_usb1_inst_NXT,       --                              .hps_io_usb1_inst_NXT
			hps_io_hps_io_spim0_inst_CLK      => CONNECTED_TO_hps_io_hps_io_spim0_inst_CLK,      --                              .hps_io_spim0_inst_CLK
			hps_io_hps_io_spim0_inst_MOSI     => CONNECTED_TO_hps_io_hps_io_spim0_inst_MOSI,     --                              .hps_io_spim0_inst_MOSI
			hps_io_hps_io_spim0_inst_MISO     => CONNECTED_TO_hps_io_hps_io_spim0_inst_MISO,     --                              .hps_io_spim0_inst_MISO
			hps_io_hps_io_spim0_inst_SS0      => CONNECTED_TO_hps_io_hps_io_spim0_inst_SS0,      --                              .hps_io_spim0_inst_SS0
			hps_io_hps_io_spim1_inst_CLK      => CONNECTED_TO_hps_io_hps_io_spim1_inst_CLK,      --                              .hps_io_spim1_inst_CLK
			hps_io_hps_io_spim1_inst_MOSI     => CONNECTED_TO_hps_io_hps_io_spim1_inst_MOSI,     --                              .hps_io_spim1_inst_MOSI
			hps_io_hps_io_spim1_inst_MISO     => CONNECTED_TO_hps_io_hps_io_spim1_inst_MISO,     --                              .hps_io_spim1_inst_MISO
			hps_io_hps_io_spim1_inst_SS0      => CONNECTED_TO_hps_io_hps_io_spim1_inst_SS0,      --                              .hps_io_spim1_inst_SS0
			hps_io_hps_io_uart0_inst_RX       => CONNECTED_TO_hps_io_hps_io_uart0_inst_RX,       --                              .hps_io_uart0_inst_RX
			hps_io_hps_io_uart0_inst_TX       => CONNECTED_TO_hps_io_hps_io_uart0_inst_TX,       --                              .hps_io_uart0_inst_TX
			hps_io_hps_io_i2c1_inst_SDA       => CONNECTED_TO_hps_io_hps_io_i2c1_inst_SDA,       --                              .hps_io_i2c1_inst_SDA
			hps_io_hps_io_i2c1_inst_SCL       => CONNECTED_TO_hps_io_hps_io_i2c1_inst_SCL,       --                              .hps_io_i2c1_inst_SCL
			i2s_ssm2603_0_bit_clock_pin       => CONNECTED_TO_i2s_ssm2603_0_bit_clock_pin,       --       i2s_ssm2603_0_bit_clock.pin
			i2s_ssm2603_0_pbclk_pin           => CONNECTED_TO_i2s_ssm2603_0_pbclk_pin,           --           i2s_ssm2603_0_pbclk.pin
			i2s_ssm2603_0_reclk_pin           => CONNECTED_TO_i2s_ssm2603_0_reclk_pin,           --           i2s_ssm2603_0_reclk.pin
			i2s_ssm2603_0_serial_data_in_pin  => CONNECTED_TO_i2s_ssm2603_0_serial_data_in_pin,  --  i2s_ssm2603_0_serial_data_in.pin
			i2s_ssm2603_0_serial_data_out_pin => CONNECTED_TO_i2s_ssm2603_0_serial_data_out_pin, -- i2s_ssm2603_0_serial_data_out.pin
			memory_mem_a                      => CONNECTED_TO_memory_mem_a,                      --                        memory.mem_a
			memory_mem_ba                     => CONNECTED_TO_memory_mem_ba,                     --                              .mem_ba
			memory_mem_ck                     => CONNECTED_TO_memory_mem_ck,                     --                              .mem_ck
			memory_mem_ck_n                   => CONNECTED_TO_memory_mem_ck_n,                   --                              .mem_ck_n
			memory_mem_cke                    => CONNECTED_TO_memory_mem_cke,                    --                              .mem_cke
			memory_mem_cs_n                   => CONNECTED_TO_memory_mem_cs_n,                   --                              .mem_cs_n
			memory_mem_ras_n                  => CONNECTED_TO_memory_mem_ras_n,                  --                              .mem_ras_n
			memory_mem_cas_n                  => CONNECTED_TO_memory_mem_cas_n,                  --                              .mem_cas_n
			memory_mem_we_n                   => CONNECTED_TO_memory_mem_we_n,                   --                              .mem_we_n
			memory_mem_reset_n                => CONNECTED_TO_memory_mem_reset_n,                --                              .mem_reset_n
			memory_mem_dq                     => CONNECTED_TO_memory_mem_dq,                     --                              .mem_dq
			memory_mem_dqs                    => CONNECTED_TO_memory_mem_dqs,                    --                              .mem_dqs
			memory_mem_dqs_n                  => CONNECTED_TO_memory_mem_dqs_n,                  --                              .mem_dqs_n
			memory_mem_odt                    => CONNECTED_TO_memory_mem_odt,                    --                              .mem_odt
			memory_mem_dm                     => CONNECTED_TO_memory_mem_dm,                     --                              .mem_dm
			memory_oct_rzqin                  => CONNECTED_TO_memory_oct_rzqin,                  --                              .oct_rzqin
			pll_0_refclk_clk                  => CONNECTED_TO_pll_0_refclk_clk,                  --                  pll_0_refclk.clk
			i2c_ssm2603_0_i2c_clk_pin         => CONNECTED_TO_i2c_ssm2603_0_i2c_clk_pin,         --         i2c_ssm2603_0_i2c_clk.pin
			i2c_ssm2603_0_i2c_data_pin        => CONNECTED_TO_i2c_ssm2603_0_i2c_data_pin,        --        i2c_ssm2603_0_i2c_data.pin
			i2c_ssm2603_0_muten_pin           => CONNECTED_TO_i2c_ssm2603_0_muten_pin            --           i2c_ssm2603_0_muten.pin
		);

