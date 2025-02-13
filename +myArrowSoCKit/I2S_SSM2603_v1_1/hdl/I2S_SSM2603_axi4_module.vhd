-- -------------------------------------------------------------
-- 
-- File Name: hdl_prj\hdlsrc\hdlcoder_I2S_ssm2603\I2S_SSM2603_axi4_module.vhd
-- Created: 2020-11-19 16:00:38
-- 
-- Generated by MATLAB 9.9 and HDL Coder 3.17
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: I2S_SSM2603_axi4_module
-- Source Path: I2S_SSM2603/I2S_SSM2603_axi4/I2S_SSM2603_axi4_module
-- Hierarchy Level: 2
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY I2S_SSM2603_axi4_module IS
  PORT( clk                               :   IN    std_logic;
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
        data_read                         :   IN    std_logic_vector(31 DOWNTO 0);  -- ufix32
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
        AXI4_RVALID                       :   OUT   std_logic;  -- ufix1
        data_write                        :   OUT   std_logic_vector(31 DOWNTO 0);  -- ufix32
        addr_sel                          :   OUT   std_logic_vector(13 DOWNTO 0);  -- ufix14
        wr_enb                            :   OUT   std_logic;  -- ufix1
        rd_enb                            :   OUT   std_logic;  -- ufix1
        reset_internal                    :   OUT   std_logic  -- ufix1
        );
END I2S_SSM2603_axi4_module;


ARCHITECTURE rtl OF I2S_SSM2603_axi4_module IS

  -- Component Declarations
  COMPONENT I2S_SSM2603_rdfifo_data
    PORT( clk                             :   IN    std_logic;
          reset                           :   IN    std_logic;
          enb                             :   IN    std_logic;
          In_rsvd                         :   IN    std_logic_vector(31 DOWNTO 0);  -- ufix32
          Push                            :   IN    std_logic;  -- ufix1
          Pop                             :   IN    std_logic;  -- ufix1
          Out_rsvd                        :   OUT   std_logic_vector(31 DOWNTO 0);  -- ufix32
          Empty                           :   OUT   std_logic;  -- ufix1
          AFull                           :   OUT   std_logic  -- ufix1
          );
  END COMPONENT;

  COMPONENT I2S_SSM2603_rdfifo_rid
    PORT( clk                             :   IN    std_logic;
          reset                           :   IN    std_logic;
          enb                             :   IN    std_logic;
          In_rsvd                         :   IN    std_logic_vector(12 DOWNTO 0);  -- ufix13
          Push                            :   IN    std_logic;  -- ufix1
          Pop                             :   IN    std_logic;  -- ufix1
          Out_rsvd                        :   OUT   std_logic_vector(12 DOWNTO 0)  -- ufix13
          );
  END COMPONENT;

  COMPONENT I2S_SSM2603_rdfifo_last
    PORT( clk                             :   IN    std_logic;
          reset                           :   IN    std_logic;
          enb                             :   IN    std_logic;
          In_rsvd                         :   IN    std_logic;  -- ufix1
          Push                            :   IN    std_logic;  -- ufix1
          Pop                             :   IN    std_logic;  -- ufix1
          Out_rsvd                        :   OUT   std_logic  -- ufix1
          );
  END COMPONENT;

  -- Component Configuration Statements
  FOR ALL : I2S_SSM2603_rdfifo_data
    USE ENTITY work.I2S_SSM2603_rdfifo_data(rtl);

  FOR ALL : I2S_SSM2603_rdfifo_rid
    USE ENTITY work.I2S_SSM2603_rdfifo_rid(rtl);

  FOR ALL : I2S_SSM2603_rdfifo_last
    USE ENTITY work.I2S_SSM2603_rdfifo_last(rtl);

  -- Functions
  -- HDLCODER_TO_STDLOGIC 
  FUNCTION hdlcoder_to_stdlogic(arg: boolean) RETURN std_logic IS
  BEGIN
    IF arg THEN
      RETURN '1';
    ELSE
      RETURN '0';
    END IF;
  END FUNCTION;


  -- Signals
  SIGNAL reset                            : std_logic;
  SIGNAL enb                              : std_logic;
  SIGNAL AXI4_AWID_unsigned               : unsigned(12 DOWNTO 0);  -- ufix13
  SIGNAL AXI4_AWADDR_unsigned             : unsigned(15 DOWNTO 0);  -- ufix16
  SIGNAL AXI4_AWBURST_unsigned            : unsigned(1 DOWNTO 0);  -- ufix2
  SIGNAL AXI4_ARID_unsigned               : unsigned(12 DOWNTO 0);  -- ufix13
  SIGNAL AXI4_ARADDR_unsigned             : unsigned(15 DOWNTO 0);  -- ufix16
  SIGNAL AXI4_ARLEN_unsigned              : unsigned(7 DOWNTO 0);  -- ufix8
  SIGNAL AXI4_ARBURST_unsigned            : unsigned(1 DOWNTO 0);  -- ufix2
  SIGNAL const_1                          : std_logic;  -- ufix1
  SIGNAL ar_transfer                      : std_logic;  -- ufix1
  SIGNAL AXI4_RDATA_tmp                   : std_logic_vector(31 DOWNTO 0);  -- ufix32
  SIGNAL fifo_empty_data                  : std_logic;  -- ufix1
  SIGNAL fifo_afull_data                  : std_logic;  -- ufix1
  SIGNAL axi4_wstate                      : unsigned(7 DOWNTO 0);  -- uint8
  SIGNAL axi4_wid                         : unsigned(12 DOWNTO 0);  -- ufix13
  SIGNAL axi4_waddr                       : unsigned(15 DOWNTO 0);  -- ufix16
  SIGNAL axi4_waddr_inc                   : unsigned(15 DOWNTO 0);  -- ufix16
  SIGNAL axi4_awtransfer                  : std_logic;
  SIGNAL axi4_wtransfer                   : std_logic;
  SIGNAL axi4_rstate                      : unsigned(7 DOWNTO 0);  -- uint8
  SIGNAL axi4_rid_1                       : unsigned(12 DOWNTO 0);  -- ufix13
  SIGNAL axi4_raddr                       : unsigned(15 DOWNTO 0);  -- ufix16
  SIGNAL axi4_raddr_inc                   : unsigned(15 DOWNTO 0);  -- ufix16
  SIGNAL axi4_rlen                        : unsigned(7 DOWNTO 0);  -- ufix8
  SIGNAL axi4_ar_transfer                 : std_logic;
  SIGNAL axi4_rlast_1                     : std_logic;
  SIGNAL axi4_rd_active                   : std_logic;
  SIGNAL axi4_wstate_next                 : unsigned(7 DOWNTO 0);  -- uint8
  SIGNAL axi4_wid_next                    : unsigned(12 DOWNTO 0);  -- ufix13
  SIGNAL axi4_waddr_next                  : unsigned(15 DOWNTO 0);  -- ufix16
  SIGNAL axi4_waddr_inc_next              : unsigned(15 DOWNTO 0);  -- ufix16
  SIGNAL axi4_awtransfer_next             : std_logic;
  SIGNAL axi4_wtransfer_next              : std_logic;
  SIGNAL axi4_rstate_next                 : unsigned(7 DOWNTO 0);  -- uint8
  SIGNAL axi4_rid_next                    : unsigned(12 DOWNTO 0);  -- ufix13
  SIGNAL axi4_raddr_next                  : unsigned(15 DOWNTO 0);  -- ufix16
  SIGNAL axi4_raddr_inc_next              : unsigned(15 DOWNTO 0);  -- ufix16
  SIGNAL axi4_rlen_next                   : unsigned(7 DOWNTO 0);  -- ufix8
  SIGNAL axi4_ar_transfer_next            : std_logic;
  SIGNAL axi4_rlast_next                  : std_logic;
  SIGNAL axi4_rd_active_next              : std_logic;
  SIGNAL waddr_int                        : unsigned(15 DOWNTO 0);  -- ufix16
  SIGNAL AXI4_BID_tmp                     : unsigned(12 DOWNTO 0);  -- ufix13
  SIGNAL raddr_r                          : unsigned(15 DOWNTO 0);  -- ufix16
  SIGNAL rid_int                          : unsigned(12 DOWNTO 0);  -- ufix13
  SIGNAL rlast_int                        : std_logic;  -- ufix1
  SIGNAL aw_transfer                      : std_logic;  -- ufix1
  SIGNAL w_transfer                       : std_logic;  -- ufix1
  SIGNAL rd_active                        : std_logic;  -- ufix1
  SIGNAL const_0_2                        : unsigned(1 DOWNTO 0);  -- ufix2
  SIGNAL AXI4_RID_tmp                     : std_logic_vector(12 DOWNTO 0);  -- ufix13
  SIGNAL AXI4_WDATA_unsigned              : unsigned(31 DOWNTO 0);  -- ufix32
  SIGNAL wdata_int                        : unsigned(31 DOWNTO 0);  -- ufix32
  SIGNAL wdata                            : unsigned(31 DOWNTO 0);  -- ufix32
  SIGNAL waddr_r                          : unsigned(15 DOWNTO 0);  -- ufix16
  SIGNAL waddr                            : unsigned(15 DOWNTO 0);  -- ufix16
  SIGNAL waddr_sel                        : unsigned(13 DOWNTO 0);  -- ufix14
  SIGNAL raddr_sel                        : unsigned(13 DOWNTO 0);  -- ufix14
  SIGNAL addr_sel_tmp                     : unsigned(13 DOWNTO 0);  -- ufix14
  SIGNAL AXI4_WSTRB_unsigned              : unsigned(3 DOWNTO 0);  -- ufix4
  SIGNAL wstrb_reduce                     : std_logic;  -- ufix1
  SIGNAL wstrb_reduce_reg                 : std_logic;  -- ufix1
  SIGNAL w_transfer_and_wstrb             : std_logic;  -- ufix1
  SIGNAL wr_enb_1                         : std_logic;  -- ufix1
  SIGNAL strobe_addr                      : std_logic;  -- ufix1
  SIGNAL strobe_sel                       : std_logic;  -- ufix1
  SIGNAL const_zero                       : std_logic;  -- ufix1
  SIGNAL strobe_in                        : std_logic;  -- ufix1
  SIGNAL strobe_sw                        : std_logic;  -- ufix1
  SIGNAL soft_reset                       : std_logic;  -- ufix1

BEGIN
  u_I2S_SSM2603_rdfifo_data_inst : I2S_SSM2603_rdfifo_data
    PORT MAP( clk => clk,
              reset => reset,
              enb => const_1,
              In_rsvd => data_read,  -- ufix32
              Push => ar_transfer,  -- ufix1
              Pop => AXI4_RREADY,  -- ufix1
              Out_rsvd => AXI4_RDATA_tmp,  -- ufix32
              Empty => fifo_empty_data,  -- ufix1
              AFull => fifo_afull_data  -- ufix1
              );

  u_I2S_SSM2603_rdfifo_rid_inst : I2S_SSM2603_rdfifo_rid
    PORT MAP( clk => clk,
              reset => reset,
              enb => const_1,
              In_rsvd => std_logic_vector(rid_int),  -- ufix13
              Push => ar_transfer,  -- ufix1
              Pop => AXI4_RREADY,  -- ufix1
              Out_rsvd => AXI4_RID_tmp  -- ufix13
              );

  u_I2S_SSM2603_rdfifo_last_inst : I2S_SSM2603_rdfifo_last
    PORT MAP( clk => clk,
              reset => reset,
              enb => const_1,
              In_rsvd => rlast_int,  -- ufix1
              Push => ar_transfer,  -- ufix1
              Pop => AXI4_RREADY,  -- ufix1
              Out_rsvd => AXI4_RLAST  -- ufix1
              );

  AXI4_AWID_unsigned <= unsigned(AXI4_AWID);

  AXI4_AWADDR_unsigned <= unsigned(AXI4_AWADDR);

  AXI4_AWBURST_unsigned <= unsigned(AXI4_AWBURST);

  AXI4_ARID_unsigned <= unsigned(AXI4_ARID);

  AXI4_ARADDR_unsigned <= unsigned(AXI4_ARADDR);

  AXI4_ARLEN_unsigned <= unsigned(AXI4_ARLEN);

  AXI4_ARBURST_unsigned <= unsigned(AXI4_ARBURST);

  const_1 <= '1';

  reset <=  NOT AXI4_ARESETN;

  enb <= const_1;

  axi4_process : PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      axi4_wstate <= to_unsigned(16#00#, 8);
      axi4_wid <= to_unsigned(16#0000#, 13);
      axi4_waddr <= to_unsigned(16#0000#, 16);
      axi4_waddr_inc <= to_unsigned(16#0000#, 16);
      axi4_awtransfer <= '0';
      axi4_wtransfer <= '0';
      axi4_rstate <= to_unsigned(16#00#, 8);
      axi4_rid_1 <= to_unsigned(16#0000#, 13);
      axi4_raddr <= to_unsigned(16#0000#, 16);
      axi4_raddr_inc <= to_unsigned(16#0000#, 16);
      axi4_rlen <= to_unsigned(16#00#, 8);
      axi4_ar_transfer <= '0';
      axi4_rlast_1 <= '0';
      axi4_rd_active <= '0';
    ELSIF clk'EVENT AND clk = '1' THEN
      IF enb = '1' THEN
        axi4_wstate <= axi4_wstate_next;
        axi4_wid <= axi4_wid_next;
        axi4_waddr <= axi4_waddr_next;
        axi4_waddr_inc <= axi4_waddr_inc_next;
        axi4_awtransfer <= axi4_awtransfer_next;
        axi4_wtransfer <= axi4_wtransfer_next;
        axi4_rstate <= axi4_rstate_next;
        axi4_rid_1 <= axi4_rid_next;
        axi4_raddr <= axi4_raddr_next;
        axi4_raddr_inc <= axi4_raddr_inc_next;
        axi4_rlen <= axi4_rlen_next;
        axi4_ar_transfer <= axi4_ar_transfer_next;
        axi4_rlast_1 <= axi4_rlast_next;
        axi4_rd_active <= axi4_rd_active_next;
      END IF;
    END IF;
  END PROCESS axi4_process;

  axi4_output : PROCESS (AXI4_ARADDR_unsigned, AXI4_ARBURST_unsigned, AXI4_ARID_unsigned,
       AXI4_ARLEN_unsigned, AXI4_ARVALID, AXI4_AWADDR_unsigned,
       AXI4_AWBURST_unsigned, AXI4_AWID_unsigned, AXI4_AWVALID, AXI4_BREADY,
       AXI4_WLAST, AXI4_WVALID, axi4_ar_transfer, axi4_awtransfer, axi4_raddr,
       axi4_raddr_inc, axi4_rd_active, axi4_rid_1, axi4_rlast_1, axi4_rlen,
       axi4_rstate, axi4_waddr, axi4_waddr_inc, axi4_wid, axi4_wstate,
       axi4_wtransfer, fifo_afull_data)
    VARIABLE awvalid : std_logic;
    VARIABLE wvalid : std_logic;
    VARIABLE rd_fifo_afull : std_logic;
  BEGIN
    axi4_wid_next <= axi4_wid;
    axi4_waddr_next <= axi4_waddr;
    axi4_waddr_inc_next <= axi4_waddr_inc;
    axi4_awtransfer_next <= axi4_awtransfer;
    axi4_wtransfer_next <= axi4_wtransfer;
    axi4_rid_next <= axi4_rid_1;
    axi4_raddr_next <= axi4_raddr;
    axi4_raddr_inc_next <= axi4_raddr_inc;
    axi4_rlen_next <= axi4_rlen;
    axi4_ar_transfer_next <= axi4_ar_transfer;
    axi4_rlast_next <= axi4_rlast_1;
    axi4_rd_active_next <= axi4_rd_active;
    IF AXI4_AWVALID /= '0' THEN 
      awvalid := '1';
    ELSE 
      awvalid := '0';
    END IF;
    IF AXI4_WVALID /= '0' THEN 
      wvalid := '1';
    ELSE 
      wvalid := '0';
    END IF;
    IF fifo_afull_data /= '0' THEN 
      rd_fifo_afull := '1';
    ELSE 
      rd_fifo_afull := '0';
    END IF;
    CASE axi4_wstate IS
      WHEN "00000000" =>
        IF axi4_rstate = to_unsigned(16#00000000#, 8) THEN 
          AXI4_AWREADY <= '1';
        ELSE 
          AXI4_AWREADY <= '0';
        END IF;
        AXI4_WREADY <= '0';
        AXI4_BVALID <= '0';
        axi4_waddr_next <= AXI4_AWADDR_unsigned;
        axi4_wid_next <= AXI4_AWID_unsigned;
        axi4_wtransfer_next <= '0';
        CASE AXI4_AWBURST_unsigned IS
          WHEN "00" =>
            axi4_waddr_inc_next <= to_unsigned(16#0000#, 16);
          WHEN OTHERS => 
            axi4_waddr_inc_next <= to_unsigned(16#0004#, 16);
        END CASE;
        IF (awvalid AND hdlcoder_to_stdlogic(axi4_rstate = to_unsigned(16#00000000#, 8))) = '1' THEN 
          axi4_wstate_next <= to_unsigned(16#01#, 8);
          axi4_awtransfer_next <= '1';
        ELSE 
          axi4_wstate_next <= to_unsigned(16#00#, 8);
          axi4_awtransfer_next <= '0';
        END IF;
      WHEN "00000001" =>
        AXI4_AWREADY <= '0';
        AXI4_WREADY <= '1';
        AXI4_BVALID <= '0';
        IF wvalid = '1' THEN 
          axi4_awtransfer_next <= '1';
          axi4_waddr_next <= axi4_waddr + axi4_waddr_inc;
          axi4_wtransfer_next <= '1';
        ELSE 
          axi4_awtransfer_next <= '0';
          axi4_wtransfer_next <= '0';
        END IF;
        IF (wvalid AND AXI4_WLAST) = '1' THEN 
          axi4_wstate_next <= to_unsigned(16#02#, 8);
        ELSE 
          axi4_wstate_next <= to_unsigned(16#01#, 8);
        END IF;
      WHEN "00000010" =>
        axi4_wtransfer_next <= '0';
        axi4_awtransfer_next <= '0';
        AXI4_AWREADY <= '0';
        AXI4_WREADY <= '0';
        AXI4_BVALID <= '1';
        IF AXI4_BREADY /= '0' THEN 
          axi4_wstate_next <= to_unsigned(16#00#, 8);
        ELSE 
          axi4_wstate_next <= to_unsigned(16#02#, 8);
        END IF;
      WHEN OTHERS => 
        AXI4_AWREADY <= '0';
        AXI4_WREADY <= '0';
        AXI4_BVALID <= '0';
        axi4_wstate_next <= to_unsigned(16#00#, 8);
    END CASE;
    CASE axi4_rstate IS
      WHEN "00000000" =>
        AXI4_ARREADY <= hdlcoder_to_stdlogic(axi4_wstate = to_unsigned(16#00000000#, 8)) AND ( NOT awvalid);
        axi4_raddr_next <= AXI4_ARADDR_unsigned;
        axi4_rlen_next <= AXI4_ARLEN_unsigned;
        axi4_rlast_next <= '0';
        CASE AXI4_ARBURST_unsigned IS
          WHEN "00" =>
            axi4_raddr_inc_next <= to_unsigned(16#0000#, 16);
          WHEN OTHERS => 
            axi4_raddr_inc_next <= to_unsigned(16#0004#, 16);
        END CASE;
        IF (hdlcoder_to_stdlogic((AXI4_ARVALID /= '0') AND (axi4_wstate = to_unsigned(16#00000000#, 8))) AND ( NOT awvalid)) = '1' THEN 
          axi4_rstate_next <= to_unsigned(16#01#, 8);
          axi4_rd_active_next <= '1';
          axi4_rid_next <= AXI4_ARID_unsigned;
        ELSE 
          axi4_rstate_next <= to_unsigned(16#00#, 8);
          axi4_rd_active_next <= '0';
        END IF;
        axi4_ar_transfer_next <= '0';
      WHEN "00000001" =>
        AXI4_ARREADY <= '0';
        IF axi4_rlast_1 = '1' THEN 
          axi4_rstate_next <= to_unsigned(16#02#, 8);
        ELSE 
          axi4_rstate_next <= to_unsigned(16#01#, 8);
        END IF;
        IF axi4_ar_transfer = '1' THEN 
          axi4_raddr_next <= axi4_raddr + axi4_raddr_inc;
        END IF;
        IF (( NOT rd_fifo_afull) AND ( NOT axi4_rlast_1)) = '1' THEN 
          axi4_ar_transfer_next <= '1';
          IF axi4_rlen = to_unsigned(16#00#, 8) THEN 
            axi4_rlast_next <= '1';
          END IF;
        ELSE 
          axi4_ar_transfer_next <= '0';
        END IF;
        IF ( NOT rd_fifo_afull) = '1' THEN 
          axi4_rlen_next <= axi4_rlen - to_unsigned(16#01#, 8);
        END IF;
      WHEN "00000010" =>
        AXI4_ARREADY <= '0';
        IF ( NOT rd_fifo_afull) = '1' THEN 
          axi4_rstate_next <= to_unsigned(16#00#, 8);
        ELSE 
          axi4_rstate_next <= to_unsigned(16#02#, 8);
        END IF;
        axi4_rd_active_next <= '0';
      WHEN OTHERS => 
        AXI4_ARREADY <= '0';
        axi4_rstate_next <= to_unsigned(16#00#, 8);
    END CASE;
    waddr_int <= axi4_waddr;
    AXI4_BID_tmp <= axi4_wid;
    raddr_r <= axi4_raddr;
    rid_int <= axi4_rid_1;
    rlast_int <= axi4_rlast_1;
    aw_transfer <= axi4_awtransfer;
    w_transfer <= axi4_wtransfer;
    ar_transfer <= axi4_ar_transfer;
    rd_active <= axi4_rd_active;
  END PROCESS axi4_output;


  AXI4_BID <= std_logic_vector(AXI4_BID_tmp);

  const_0_2 <= to_unsigned(16#0#, 2);

  AXI4_BRESP <= std_logic_vector(const_0_2);

  AXI4_RRESP <= std_logic_vector(const_0_2);

  AXI4_RVALID <=  NOT fifo_empty_data;

  AXI4_WDATA_unsigned <= unsigned(AXI4_WDATA);

  reg_wdata_in_process : PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      wdata_int <= to_unsigned(0, 32);
    ELSIF clk'EVENT AND clk = '1' THEN
      IF enb = '1' THEN
        wdata_int <= AXI4_WDATA_unsigned;
      END IF;
    END IF;
  END PROCESS reg_wdata_in_process;


  reg_wdata_process : PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      wdata <= to_unsigned(0, 32);
    ELSIF clk'EVENT AND clk = '1' THEN
      IF enb = '1' AND w_transfer = '1' THEN
        wdata <= wdata_int;
      END IF;
    END IF;
  END PROCESS reg_wdata_process;


  data_write <= std_logic_vector(wdata);

  reg_waddr_in_process : PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      waddr_r <= to_unsigned(16#0000#, 16);
    ELSIF clk'EVENT AND clk = '1' THEN
      IF enb = '1' AND aw_transfer = '1' THEN
        waddr_r <= waddr_int;
      END IF;
    END IF;
  END PROCESS reg_waddr_in_process;


  reg_waddr_process : PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      waddr <= to_unsigned(16#0000#, 16);
    ELSIF clk'EVENT AND clk = '1' THEN
      IF enb = '1' THEN
        waddr <= waddr_r;
      END IF;
    END IF;
  END PROCESS reg_waddr_process;


  waddr_sel <= waddr(15 DOWNTO 2);

  raddr_sel <= raddr_r(15 DOWNTO 2);

  
  addr_sel_tmp <= waddr_sel WHEN rd_active = '0' ELSE
      raddr_sel;

  addr_sel <= std_logic_vector(addr_sel_tmp);

  AXI4_WSTRB_unsigned <= unsigned(AXI4_WSTRB);

  wstrb_reduce <= (AXI4_WSTRB_unsigned(3) AND AXI4_WSTRB_unsigned(2) AND AXI4_WSTRB_unsigned(1) AND AXI4_WSTRB_unsigned(0));

  reg_wstrb_reduce_process : PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      wstrb_reduce_reg <= '0';
    ELSIF clk'EVENT AND clk = '1' THEN
      IF enb = '1' THEN
        wstrb_reduce_reg <= wstrb_reduce;
      END IF;
    END IF;
  END PROCESS reg_wstrb_reduce_process;


  w_transfer_and_wstrb <= w_transfer AND wstrb_reduce_reg;

  reg_wr_enb_process : PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      wr_enb_1 <= '0';
    ELSIF clk'EVENT AND clk = '1' THEN
      IF enb = '1' THEN
        wr_enb_1 <= w_transfer_and_wstrb;
      END IF;
    END IF;
  END PROCESS reg_wr_enb_process;


  rd_enb <= ar_transfer;

  
  strobe_addr <= '1' WHEN waddr_sel = to_unsigned(16#0000#, 14) ELSE
      '0';

  strobe_sel <= strobe_addr AND wr_enb_1;

  const_zero <= '0';

  strobe_in <= wdata(0);

  
  strobe_sw <= const_zero WHEN strobe_sel = '0' ELSE
      strobe_in;

  reg_process : PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      soft_reset <= '0';
    ELSIF clk'EVENT AND clk = '1' THEN
      IF enb = '1' THEN
        soft_reset <= strobe_sw;
      END IF;
    END IF;
  END PROCESS reg_process;


  reset_internal <= reset OR soft_reset;

  AXI4_RID <= AXI4_RID_tmp;

  AXI4_RDATA <= AXI4_RDATA_tmp;

  wr_enb <= wr_enb_1;

END rtl;

