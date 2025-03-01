-- -------------------------------------------------------------
-- 
-- File Name: hdl_prj\hdlsrc\hdlcoder_I2C_ssm2603\I2C_SSM2603_src_I2C_SSM2603.vhd
-- Created: 2020-11-19 16:06:43
-- 
-- Generated by MATLAB 9.9 and HDL Coder 3.17
-- 
-- 
-- -------------------------------------------------------------
-- Rate and Clocking Details
-- -------------------------------------------------------------
-- Model base rate: 0.015625
-- Target subsystem base rate: 0.015625
-- Explicit user oversample request: 64x
-- 
-- 
-- Clock Enable  Sample Time
-- -------------------------------------------------------------
-- ce_out        1
-- -------------------------------------------------------------
-- 
-- 
-- Output Signal                 Clock Enable  Sample Time
-- -------------------------------------------------------------
-- I2C_CLK                       ce_out        1
-- I2C_DATA                      ce_out        1
-- MUTEN                         ce_out        1
-- Dammy                         ce_out        1
-- -------------------------------------------------------------
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: I2C_SSM2603_src_I2C_SSM2603
-- Source Path: hdlcoder_I2C_ssm2603/I2C_SSM2603
-- Hierarchy Level: 0
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY I2C_SSM2603_src_I2C_SSM2603 IS
  PORT( clk                               :   IN    std_logic;
        reset                             :   IN    std_logic;
        clk_enable                        :   IN    std_logic;
        ce_out                            :   OUT   std_logic;
        I2C_CLK                           :   OUT   std_logic;
        I2C_DATA                          :   INOUT std_logic;
        MUTEN                             :   OUT   std_logic;
        Dammy                             :   OUT   std_logic_vector(7 DOWNTO 0)  -- uint8
        );
END I2C_SSM2603_src_I2C_SSM2603;


ARCHITECTURE rtl OF I2C_SSM2603_src_I2C_SSM2603 IS

  -- Component Declarations
  COMPONENT I2C_SSM2603_src_I2C_SSM2603_tc
    PORT( clk                             :   IN    std_logic;
          reset                           :   IN    std_logic;
          clk_enable                      :   IN    std_logic;
          enb                             :   OUT   std_logic;
          enb_1_1_1                       :   OUT   std_logic;
          enb_64_1_0                      :   OUT   std_logic
          );
  END COMPONENT;

  COMPONENT I2C_SSM2603_src_i2c_cfg
    PORT( clk                             :   IN    std_logic;
          reset                           :   IN    std_logic;
          enb                             :   IN    std_logic;
          busy                            :   IN    std_logic;
          n_ack                           :   IN    std_logic;
          enb_1                           :   OUT   std_logic;
          rw                              :   OUT   std_logic;
          mode                            :   OUT   std_logic;
          slv_addr                        :   OUT   std_logic_vector(7 DOWNTO 0);  -- uint8
          reg_addr                        :   OUT   std_logic_vector(7 DOWNTO 0);  -- uint8
          reg_byte_mode                   :   OUT   std_logic;
          databyte                        :   OUT   std_logic_vector(7 DOWNTO 0);  -- uint8
          MUTEN                           :   OUT   std_logic
          );
  END COMPONENT;

  COMPONENT I2C_SSM2603_src_I2C_MasterController
    PORT( clk                             :   IN    std_logic;
          reset                           :   IN    std_logic;
          enb                             :   IN    std_logic;
          enb_1                           :   IN    std_logic;
          rd_wr                           :   IN    std_logic;
          mode                            :   IN    std_logic;
          slv_addr                        :   IN    std_logic_vector(7 DOWNTO 0);  -- uint8
          reg_addr                        :   IN    std_logic_vector(7 DOWNTO 0);  -- uint8
          reg_byte_mode                   :   IN    std_logic;
          reg_data0                       :   IN    std_logic_vector(7 DOWNTO 0);  -- uint8
          busy                            :   OUT   std_logic;
          I2C_SCL                         :   OUT   std_logic;
          I2C_SDA                         :   INOUT std_logic;
          n_ack                           :   OUT   std_logic
          );
  END COMPONENT;

  -- Component Configuration Statements
  FOR ALL : I2C_SSM2603_src_I2C_SSM2603_tc
    USE ENTITY work.I2C_SSM2603_src_I2C_SSM2603_tc(rtl);

  FOR ALL : I2C_SSM2603_src_i2c_cfg
    USE ENTITY work.I2C_SSM2603_src_i2c_cfg(rtl);

  FOR ALL : I2C_SSM2603_src_I2C_MasterController
    USE ENTITY work.I2C_SSM2603_src_I2C_MasterController(rtl);

  -- Signals
  SIGNAL enb                              : std_logic;
  SIGNAL enb_1_1_1                        : std_logic;
  SIGNAL enb_64_1_0                       : std_logic;
  SIGNAL I2C_MasterController_out1        : std_logic;
  SIGNAL I2C_MasterController_out4        : std_logic;
  SIGNAL enb_1                            : std_logic;
  SIGNAL rw                               : std_logic;
  SIGNAL mode                             : std_logic;
  SIGNAL slv_addr                         : std_logic_vector(7 DOWNTO 0);  -- ufix8
  SIGNAL reg_addr                         : std_logic_vector(7 DOWNTO 0);  -- ufix8
  SIGNAL reg_byte_mode                    : std_logic;
  SIGNAL databyte                         : std_logic_vector(7 DOWNTO 0);  -- ufix8
  SIGNAL I2C_MasterController_out2        : std_logic;

BEGIN
  u_I2C_SSM2603_tc : I2C_SSM2603_src_I2C_SSM2603_tc
    PORT MAP( clk => clk,
              reset => reset,
              clk_enable => clk_enable,
              enb => enb,
              enb_1_1_1 => enb_1_1_1,
              enb_64_1_0 => enb_64_1_0
              );

  u_i2c_cfg : I2C_SSM2603_src_i2c_cfg
    PORT MAP( clk => clk,
              reset => reset,
              enb => enb,
              busy => I2C_MasterController_out1,
              n_ack => I2C_MasterController_out4,
              enb_1 => enb_1,
              rw => rw,
              mode => mode,
              slv_addr => slv_addr,  -- uint8
              reg_addr => reg_addr,  -- uint8
              reg_byte_mode => reg_byte_mode,
              databyte => databyte,  -- uint8
              MUTEN => MUTEN
              );

  u_I2C_MasterController : I2C_SSM2603_src_I2C_MasterController
    PORT MAP( clk => clk,
              reset => reset,
              enb => enb,
              enb_1 => enb_1,
              rd_wr => rw,
              mode => mode,
              slv_addr => slv_addr,  -- uint8
              reg_addr => reg_addr,  -- uint8
              reg_byte_mode => reg_byte_mode,
              reg_data0 => databyte,  -- uint8
              busy => I2C_MasterController_out1,
              I2C_SCL => I2C_MasterController_out2,
              I2C_SDA => I2C_DATA,
              n_ack => I2C_MasterController_out4
              );

  ce_out <= enb_1_1_1;

  I2C_CLK <= I2C_MasterController_out2;

  Dammy <= reg_addr;

END rtl;

