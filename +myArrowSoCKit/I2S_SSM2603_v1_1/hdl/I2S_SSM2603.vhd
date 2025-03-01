-- -------------------------------------------------------------
-- 
-- File Name: hdl_prj\hdlsrc\hdlcoder_I2S_ssm2603\I2S_SSM2603.vhd
-- Created: 2020-11-19 16:00:38
-- 
-- Generated by MATLAB 9.9 and HDL Coder 3.17
-- 
-- 
-- -------------------------------------------------------------
-- Rate and Clocking Details
-- -------------------------------------------------------------
-- Model base rate: -1
-- Target subsystem base rate: -1
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: I2S_SSM2603
-- Source Path: I2S_SSM2603
-- Hierarchy Level: 0
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY I2S_SSM2603 IS
  PORT( IPCORE_CLK                        :   IN    std_logic;  -- ufix1
        IPCORE_RESETN                     :   IN    std_logic;  -- ufix1
        AXI4_Stream_Master_TREADY         :   IN    std_logic;  -- ufix1
        AXI4_Stream_Slave_TDATA           :   IN    std_logic_vector(47 DOWNTO 0);  -- ufix48
        AXI4_Stream_Slave_TVALID          :   IN    std_logic;  -- ufix1
        AXI4_Stream_Slave_TLAST           :   IN    std_logic;  -- ufix1
        Bit_clock                         :   IN    std_logic;  -- ufix1
        RECLK                             :   IN    std_logic;  -- ufix1
        Serial_data_in                    :   IN    std_logic;  -- ufix1
        PBCLK                             :   IN    std_logic;  -- ufix1
        AXI4_ACLK                         :   IN    std_logic;  -- ufix1
        AXI4_ARESETN                      :   IN    std_logic;  -- ufix1
        AXI4_AWID                         :   IN    std_logic_vector(12 DOWNTO 0);  -- ufix13
        AXI4_AWADDR                       :   IN    std_logic_vector(15 DOWNTO 0);  -- ufix16
        AXI4_AWLEN                        :   IN    std_logic_vector(7 DOWNTO 0);  -- ufix8
        AXI4_AWSIZE                       :   IN    std_logic_vector(2 DOWNTO 0);  -- ufix3
        AXI4_AWBURST                      :   IN    std_logic_vector(1 DOWNTO 0);  -- ufix2
        AXI4_AWLOCK                       :   IN    std_logic;  -- ufix1
        AXI4_AWCACHE                      :   IN    std_logic_vector(3 DOWNTO 0);  -- ufix4
        AXI4_AWPROT                       :   IN    std_logic_vector(2 DOWNTO 0);  -- ufix3
        AXI4_AWVALID                      :   IN    std_logic;  -- ufix1
        AXI4_WDATA                        :   IN    std_logic_vector(31 DOWNTO 0);  -- ufix32
        AXI4_WSTRB                        :   IN    std_logic_vector(3 DOWNTO 0);  -- ufix4
        AXI4_WLAST                        :   IN    std_logic;  -- ufix1
        AXI4_WVALID                       :   IN    std_logic;  -- ufix1
        AXI4_BREADY                       :   IN    std_logic;  -- ufix1
        AXI4_ARID                         :   IN    std_logic_vector(12 DOWNTO 0);  -- ufix13
        AXI4_ARADDR                       :   IN    std_logic_vector(15 DOWNTO 0);  -- ufix16
        AXI4_ARLEN                        :   IN    std_logic_vector(7 DOWNTO 0);  -- ufix8
        AXI4_ARSIZE                       :   IN    std_logic_vector(2 DOWNTO 0);  -- ufix3
        AXI4_ARBURST                      :   IN    std_logic_vector(1 DOWNTO 0);  -- ufix2
        AXI4_ARLOCK                       :   IN    std_logic;  -- ufix1
        AXI4_ARCACHE                      :   IN    std_logic_vector(3 DOWNTO 0);  -- ufix4
        AXI4_ARPROT                       :   IN    std_logic_vector(2 DOWNTO 0);  -- ufix3
        AXI4_ARVALID                      :   IN    std_logic;  -- ufix1
        AXI4_RREADY                       :   IN    std_logic;  -- ufix1
        AXI4_Stream_Master_TDATA          :   OUT   std_logic_vector(47 DOWNTO 0);  -- ufix48
        AXI4_Stream_Master_TVALID         :   OUT   std_logic;  -- ufix1
        AXI4_Stream_Master_TLAST          :   OUT   std_logic;  -- ufix1
        AXI4_Stream_Slave_TREADY          :   OUT   std_logic;  -- ufix1
        Serial_data_out                   :   OUT   std_logic;  -- ufix1
        AXI4_AWREADY                      :   OUT   std_logic;  -- ufix1
        AXI4_WREADY                       :   OUT   std_logic;  -- ufix1
        AXI4_BID                          :   OUT   std_logic_vector(12 DOWNTO 0);  -- ufix13
        AXI4_BRESP                        :   OUT   std_logic_vector(1 DOWNTO 0);  -- ufix2
        AXI4_BVALID                       :   OUT   std_logic;  -- ufix1
        AXI4_ARREADY                      :   OUT   std_logic;  -- ufix1
        AXI4_RID                          :   OUT   std_logic_vector(12 DOWNTO 0);  -- ufix13
        AXI4_RDATA                        :   OUT   std_logic_vector(31 DOWNTO 0);  -- ufix32
        AXI4_RRESP                        :   OUT   std_logic_vector(1 DOWNTO 0);  -- ufix2
        AXI4_RLAST                        :   OUT   std_logic;  -- ufix1
        AXI4_RVALID                       :   OUT   std_logic  -- ufix1
        );
END I2S_SSM2603;


ARCHITECTURE rtl OF I2S_SSM2603 IS

  -- Component Declarations
  COMPONENT I2S_SSM2603_axi4_stream_slave
    PORT( clk                             :   IN    std_logic;  -- ufix1
          reset                           :   IN    std_logic;
          enb                             :   IN    std_logic;
          AXI4_Stream_Slave_TDATA         :   IN    std_logic_vector(47 DOWNTO 0);  -- ufix48
          AXI4_Stream_Slave_TVALID        :   IN    std_logic;  -- ufix1
          AXI4_Stream_Slave_TLAST         :   IN    std_logic;  -- ufix1
          auto_ready                      :   IN    std_logic;  -- ufix1
          AXI4_Stream_Slave_TREADY        :   OUT   std_logic;  -- ufix1
          user_data                       :   OUT   std_logic_vector(47 DOWNTO 0);  -- ufix48
          user_valid                      :   OUT   std_logic  -- ufix1
          );
  END COMPONENT;

  COMPONENT I2S_SSM2603_reset_sync
    PORT( clk                             :   IN    std_logic;  -- ufix1
          reset_in                        :   IN    std_logic;  -- ufix1
          reset_out                       :   OUT   std_logic
          );
  END COMPONENT;

  COMPONENT I2S_SSM2603_axi4
    PORT( reset                           :   IN    std_logic;
          AXI4_ACLK                       :   IN    std_logic;  -- ufix1
          AXI4_ARESETN                    :   IN    std_logic;  -- ufix1
          AXI4_AWID                       :   IN    std_logic_vector(12 DOWNTO 0);  -- ufix13
          AXI4_AWADDR                     :   IN    std_logic_vector(15 DOWNTO 0);  -- ufix16
          AXI4_AWLEN                      :   IN    std_logic_vector(7 DOWNTO 0);  -- ufix8
          AXI4_AWSIZE                     :   IN    std_logic_vector(2 DOWNTO 0);  -- ufix3
          AXI4_AWBURST                    :   IN    std_logic_vector(1 DOWNTO 0);  -- ufix2
          AXI4_AWLOCK                     :   IN    std_logic;  -- ufix1
          AXI4_AWCACHE                    :   IN    std_logic_vector(3 DOWNTO 0);  -- ufix4
          AXI4_AWPROT                     :   IN    std_logic_vector(2 DOWNTO 0);  -- ufix3
          AXI4_AWVALID                    :   IN    std_logic;  -- ufix1
          AXI4_WDATA                      :   IN    std_logic_vector(31 DOWNTO 0);  -- ufix32
          AXI4_WSTRB                      :   IN    std_logic_vector(3 DOWNTO 0);  -- ufix4
          AXI4_WLAST                      :   IN    std_logic;  -- ufix1
          AXI4_WVALID                     :   IN    std_logic;  -- ufix1
          AXI4_BREADY                     :   IN    std_logic;  -- ufix1
          AXI4_ARID                       :   IN    std_logic_vector(12 DOWNTO 0);  -- ufix13
          AXI4_ARADDR                     :   IN    std_logic_vector(15 DOWNTO 0);  -- ufix16
          AXI4_ARLEN                      :   IN    std_logic_vector(7 DOWNTO 0);  -- ufix8
          AXI4_ARSIZE                     :   IN    std_logic_vector(2 DOWNTO 0);  -- ufix3
          AXI4_ARBURST                    :   IN    std_logic_vector(1 DOWNTO 0);  -- ufix2
          AXI4_ARLOCK                     :   IN    std_logic;  -- ufix1
          AXI4_ARCACHE                    :   IN    std_logic_vector(3 DOWNTO 0);  -- ufix4
          AXI4_ARPROT                     :   IN    std_logic_vector(2 DOWNTO 0);  -- ufix3
          AXI4_ARVALID                    :   IN    std_logic;  -- ufix1
          AXI4_RREADY                     :   IN    std_logic;  -- ufix1
          read_ip_timestamp               :   IN    std_logic_vector(31 DOWNTO 0);  -- ufix32
          read_Dammy                      :   IN    std_logic;  -- ufix1
          AXI4_AWREADY                    :   OUT   std_logic;  -- ufix1
          AXI4_WREADY                     :   OUT   std_logic;  -- ufix1
          AXI4_BID                        :   OUT   std_logic_vector(12 DOWNTO 0);  -- ufix13
          AXI4_BRESP                      :   OUT   std_logic_vector(1 DOWNTO 0);  -- ufix2
          AXI4_BVALID                     :   OUT   std_logic;  -- ufix1
          AXI4_ARREADY                    :   OUT   std_logic;  -- ufix1
          AXI4_RID                        :   OUT   std_logic_vector(12 DOWNTO 0);  -- ufix13
          AXI4_RDATA                      :   OUT   std_logic_vector(31 DOWNTO 0);  -- ufix32
          AXI4_RRESP                      :   OUT   std_logic_vector(1 DOWNTO 0);  -- ufix2
          AXI4_RLAST                      :   OUT   std_logic;  -- ufix1
          AXI4_RVALID                     :   OUT   std_logic;  -- ufix1
          write_axi_enable                :   OUT   std_logic;  -- ufix1
          write_packet_size_axi4_stream_master :   OUT   std_logic_vector(31 DOWNTO 0);  -- ufix32
          reset_internal                  :   OUT   std_logic  -- ufix1
          );
  END COMPONENT;

  COMPONENT I2S_SSM2603_dut
    PORT( clk                             :   IN    std_logic;  -- ufix1
          reset                           :   IN    std_logic;
          dut_enable                      :   IN    std_logic;  -- ufix1
          Bit_clock                       :   IN    std_logic;  -- ufix1
          RECLK                           :   IN    std_logic;  -- ufix1
          Serial_data_in                  :   IN    std_logic;  -- ufix1
          Audio_in_data                   :   IN    std_logic_vector(47 DOWNTO 0);  -- ufix48
          Audio_in_valid                  :   IN    std_logic;  -- ufix1
          PBCLK                           :   IN    std_logic;  -- ufix1
          ce_out                          :   OUT   std_logic;  -- ufix1
          Serial_data_out                 :   OUT   std_logic;  -- ufix1
          Audio_out_data                  :   OUT   std_logic_vector(47 DOWNTO 0);  -- ufix48
          Audio_out_valid                 :   OUT   std_logic;  -- ufix1
          Dammy                           :   OUT   std_logic  -- ufix1
          );
  END COMPONENT;

  COMPONENT I2S_SSM2603_axi4_stream_master
    PORT( clk                             :   IN    std_logic;  -- ufix1
          reset                           :   IN    std_logic;
          enb                             :   IN    std_logic;
          AXI4_Stream_Master_TREADY       :   IN    std_logic;  -- ufix1
          user_data                       :   IN    std_logic_vector(47 DOWNTO 0);  -- ufix48
          user_valid                      :   IN    std_logic;  -- ufix1
          write_packet_size_axi4_stream_master :   IN    std_logic_vector(31 DOWNTO 0);  -- ufix32
          AXI4_Stream_Master_TDATA        :   OUT   std_logic_vector(47 DOWNTO 0);  -- ufix48
          AXI4_Stream_Master_TVALID       :   OUT   std_logic;  -- ufix1
          AXI4_Stream_Master_TLAST        :   OUT   std_logic;  -- ufix1
          auto_ready                      :   OUT   std_logic  -- ufix1
          );
  END COMPONENT;

  -- Component Configuration Statements
  FOR ALL : I2S_SSM2603_axi4_stream_slave
    USE ENTITY work.I2S_SSM2603_axi4_stream_slave(rtl);

  FOR ALL : I2S_SSM2603_reset_sync
    USE ENTITY work.I2S_SSM2603_reset_sync(rtl);

  FOR ALL : I2S_SSM2603_axi4
    USE ENTITY work.I2S_SSM2603_axi4(rtl);

  FOR ALL : I2S_SSM2603_dut
    USE ENTITY work.I2S_SSM2603_dut(rtl);

  FOR ALL : I2S_SSM2603_axi4_stream_master
    USE ENTITY work.I2S_SSM2603_axi4_stream_master(rtl);

  -- Signals
  SIGNAL reset                            : std_logic;
  SIGNAL enb                              : std_logic;
  SIGNAL ip_timestamp                     : unsigned(31 DOWNTO 0);  -- ufix32
  SIGNAL reset_cm                         : std_logic;  -- ufix1
  SIGNAL const_1_1                        : std_logic;  -- ufix1
  SIGNAL Audio_out_valid_sig              : std_logic;  -- ufix1
  SIGNAL top_user_valid                   : std_logic;  -- ufix1
  SIGNAL top_user_valid_1                 : std_logic;  -- ufix1
  SIGNAL Audio_in_valid_sig               : std_logic;  -- ufix1
  SIGNAL auto_ready_axi4_stream_master    : std_logic;  -- ufix1
  SIGNAL top_user_data                    : std_logic_vector(47 DOWNTO 0);  -- ufix48
  SIGNAL auto_ready_dut_enb               : std_logic;  -- ufix1
  SIGNAL reset_internal                   : std_logic;  -- ufix1
  SIGNAL reset_before_sync                : std_logic;  -- ufix1
  SIGNAL Dammy_sig                        : std_logic;  -- ufix1
  SIGNAL AXI4_BID_tmp                     : std_logic_vector(12 DOWNTO 0);  -- ufix13
  SIGNAL AXI4_BRESP_tmp                   : std_logic_vector(1 DOWNTO 0);  -- ufix2
  SIGNAL AXI4_RID_tmp                     : std_logic_vector(12 DOWNTO 0);  -- ufix13
  SIGNAL AXI4_RDATA_tmp                   : std_logic_vector(31 DOWNTO 0);  -- ufix32
  SIGNAL AXI4_RRESP_tmp                   : std_logic_vector(1 DOWNTO 0);  -- ufix2
  SIGNAL write_axi_enable                 : std_logic;  -- ufix1
  SIGNAL write_packet_size_axi4_stream_master : std_logic_vector(31 DOWNTO 0);  -- ufix32
  SIGNAL dut_enable                       : std_logic;  -- ufix1
  SIGNAL ce_out_sig                       : std_logic;  -- ufix1
  SIGNAL Serial_data_out_sig              : std_logic;  -- ufix1
  SIGNAL Audio_out_data_sig               : std_logic_vector(47 DOWNTO 0);  -- ufix48
  SIGNAL AXI4_Stream_Master_TDATA_tmp     : std_logic_vector(47 DOWNTO 0);  -- ufix48

BEGIN
  u_I2S_SSM2603_axi4_stream_slave_inst : I2S_SSM2603_axi4_stream_slave
    PORT MAP( clk => IPCORE_CLK,  -- ufix1
              reset => reset,
              enb => const_1_1,
              AXI4_Stream_Slave_TDATA => AXI4_Stream_Slave_TDATA,  -- ufix48
              AXI4_Stream_Slave_TVALID => AXI4_Stream_Slave_TVALID,  -- ufix1
              AXI4_Stream_Slave_TLAST => AXI4_Stream_Slave_TLAST,  -- ufix1
              auto_ready => auto_ready_axi4_stream_master,  -- ufix1
              AXI4_Stream_Slave_TREADY => AXI4_Stream_Slave_TREADY,  -- ufix1
              user_data => top_user_data,  -- ufix48
              user_valid => top_user_valid_1  -- ufix1
              );

  u_I2S_SSM2603_reset_sync_inst : I2S_SSM2603_reset_sync
    PORT MAP( clk => IPCORE_CLK,  -- ufix1
              reset_in => reset_before_sync,  -- ufix1
              reset_out => reset
              );

  u_I2S_SSM2603_axi4_inst : I2S_SSM2603_axi4
    PORT MAP( reset => reset,
              AXI4_ACLK => AXI4_ACLK,  -- ufix1
              AXI4_ARESETN => AXI4_ARESETN,  -- ufix1
              AXI4_AWID => AXI4_AWID,  -- ufix13
              AXI4_AWADDR => AXI4_AWADDR,  -- ufix16
              AXI4_AWLEN => AXI4_AWLEN,  -- ufix8
              AXI4_AWSIZE => AXI4_AWSIZE,  -- ufix3
              AXI4_AWBURST => AXI4_AWBURST,  -- ufix2
              AXI4_AWLOCK => AXI4_AWLOCK,  -- ufix1
              AXI4_AWCACHE => AXI4_AWCACHE,  -- ufix4
              AXI4_AWPROT => AXI4_AWPROT,  -- ufix3
              AXI4_AWVALID => AXI4_AWVALID,  -- ufix1
              AXI4_WDATA => AXI4_WDATA,  -- ufix32
              AXI4_WSTRB => AXI4_WSTRB,  -- ufix4
              AXI4_WLAST => AXI4_WLAST,  -- ufix1
              AXI4_WVALID => AXI4_WVALID,  -- ufix1
              AXI4_BREADY => AXI4_BREADY,  -- ufix1
              AXI4_ARID => AXI4_ARID,  -- ufix13
              AXI4_ARADDR => AXI4_ARADDR,  -- ufix16
              AXI4_ARLEN => AXI4_ARLEN,  -- ufix8
              AXI4_ARSIZE => AXI4_ARSIZE,  -- ufix3
              AXI4_ARBURST => AXI4_ARBURST,  -- ufix2
              AXI4_ARLOCK => AXI4_ARLOCK,  -- ufix1
              AXI4_ARCACHE => AXI4_ARCACHE,  -- ufix4
              AXI4_ARPROT => AXI4_ARPROT,  -- ufix3
              AXI4_ARVALID => AXI4_ARVALID,  -- ufix1
              AXI4_RREADY => AXI4_RREADY,  -- ufix1
              read_ip_timestamp => std_logic_vector(ip_timestamp),  -- ufix32
              read_Dammy => Dammy_sig,  -- ufix1
              AXI4_AWREADY => AXI4_AWREADY,  -- ufix1
              AXI4_WREADY => AXI4_WREADY,  -- ufix1
              AXI4_BID => AXI4_BID_tmp,  -- ufix13
              AXI4_BRESP => AXI4_BRESP_tmp,  -- ufix2
              AXI4_BVALID => AXI4_BVALID,  -- ufix1
              AXI4_ARREADY => AXI4_ARREADY,  -- ufix1
              AXI4_RID => AXI4_RID_tmp,  -- ufix13
              AXI4_RDATA => AXI4_RDATA_tmp,  -- ufix32
              AXI4_RRESP => AXI4_RRESP_tmp,  -- ufix2
              AXI4_RLAST => AXI4_RLAST,  -- ufix1
              AXI4_RVALID => AXI4_RVALID,  -- ufix1
              write_axi_enable => write_axi_enable,  -- ufix1
              write_packet_size_axi4_stream_master => write_packet_size_axi4_stream_master,  -- ufix32
              reset_internal => reset_internal  -- ufix1
              );

  u_I2S_SSM2603_dut_inst : I2S_SSM2603_dut
    PORT MAP( clk => IPCORE_CLK,  -- ufix1
              reset => reset,
              dut_enable => dut_enable,  -- ufix1
              Bit_clock => Bit_clock,  -- ufix1
              RECLK => RECLK,  -- ufix1
              Serial_data_in => Serial_data_in,  -- ufix1
              Audio_in_data => top_user_data,  -- ufix48
              Audio_in_valid => Audio_in_valid_sig,  -- ufix1
              PBCLK => PBCLK,  -- ufix1
              ce_out => ce_out_sig,  -- ufix1
              Serial_data_out => Serial_data_out_sig,  -- ufix1
              Audio_out_data => Audio_out_data_sig,  -- ufix48
              Audio_out_valid => Audio_out_valid_sig,  -- ufix1
              Dammy => Dammy_sig  -- ufix1
              );

  u_I2S_SSM2603_axi4_stream_master_inst : I2S_SSM2603_axi4_stream_master
    PORT MAP( clk => IPCORE_CLK,  -- ufix1
              reset => reset,
              enb => const_1_1,
              AXI4_Stream_Master_TREADY => AXI4_Stream_Master_TREADY,  -- ufix1
              user_data => Audio_out_data_sig,  -- ufix48
              user_valid => top_user_valid,  -- ufix1
              write_packet_size_axi4_stream_master => write_packet_size_axi4_stream_master,  -- ufix32
              AXI4_Stream_Master_TDATA => AXI4_Stream_Master_TDATA_tmp,  -- ufix48
              AXI4_Stream_Master_TVALID => AXI4_Stream_Master_TVALID,  -- ufix1
              AXI4_Stream_Master_TLAST => AXI4_Stream_Master_TLAST,  -- ufix1
              auto_ready => auto_ready_axi4_stream_master  -- ufix1
              );

  ip_timestamp <= to_unsigned(2011191600, 32);

  reset_cm <=  NOT IPCORE_RESETN;

  const_1_1 <= '1';

  enb <= const_1_1;

  top_user_valid <= Audio_out_valid_sig;

  Audio_in_valid_sig <= top_user_valid_1;

  reg_process : PROCESS (IPCORE_CLK, reset)
  BEGIN
    IF reset = '1' THEN
      auto_ready_dut_enb <= '0';
    ELSIF IPCORE_CLK'EVENT AND IPCORE_CLK = '1' THEN
      IF enb = '1' THEN
        auto_ready_dut_enb <= auto_ready_axi4_stream_master;
      END IF;
    END IF;
  END PROCESS reg_process;


  reset_before_sync <= reset_cm OR reset_internal;

  dut_enable <= write_axi_enable AND auto_ready_dut_enb;

  AXI4_Stream_Master_TDATA <= AXI4_Stream_Master_TDATA_tmp;

  Serial_data_out <= Serial_data_out_sig;

  AXI4_BID <= AXI4_BID_tmp;

  AXI4_BRESP <= AXI4_BRESP_tmp;

  AXI4_RID <= AXI4_RID_tmp;

  AXI4_RDATA <= AXI4_RDATA_tmp;

  AXI4_RRESP <= AXI4_RRESP_tmp;

END rtl;

