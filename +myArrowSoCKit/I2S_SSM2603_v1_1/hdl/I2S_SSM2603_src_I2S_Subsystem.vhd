-- -------------------------------------------------------------
-- 
-- File Name: hdl_prj\hdlsrc\hdlcoder_I2S_ssm2603\I2S_SSM2603_src_I2S_Subsystem.vhd
-- Created: 2020-11-19 16:00:29
-- 
-- Generated by MATLAB 9.9 and HDL Coder 3.17
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: I2S_SSM2603_src_I2S_Subsystem
-- Source Path: hdlcoder_I2S_ssm2603/Subsystem/I2S_Subsystem
-- Hierarchy Level: 1
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY I2S_SSM2603_src_I2S_Subsystem IS
  PORT( clk                               :   IN    std_logic;
        reset                             :   IN    std_logic;
        enb                               :   IN    std_logic;
        Audio_left_in                     :   IN    std_logic_vector(23 DOWNTO 0);  -- ufix24
        Audio_right_in                    :   IN    std_logic_vector(23 DOWNTO 0);  -- ufix24
        BCLK                              :   IN    std_logic;  -- ufix1
        Serial_data_in                    :   IN    std_logic;  -- ufix1
        RECLK                             :   IN    std_logic;  -- ufix1
        PBCLK                             :   IN    std_logic;  -- ufix1
        Audio_left_out                    :   OUT   std_logic_vector(23 DOWNTO 0);  -- ufix24
        Audio_right_out                   :   OUT   std_logic_vector(23 DOWNTO 0);  -- ufix24
        new_sample                        :   OUT   std_logic;
        Serial_data_out                   :   OUT   std_logic  -- ufix1
        );
END I2S_SSM2603_src_I2S_Subsystem;


ARCHITECTURE rtl OF I2S_SSM2603_src_I2S_Subsystem IS

  -- Component Declarations
  COMPONENT I2S_SSM2603_src_I2S_controller
    PORT( clk                             :   IN    std_logic;
          reset                           :   IN    std_logic;
          enb                             :   IN    std_logic;
          Audio_left_in                   :   IN    std_logic_vector(23 DOWNTO 0);  -- ufix24
          Audio_right_in                  :   IN    std_logic_vector(23 DOWNTO 0);  -- ufix24
          BCLK                            :   IN    std_logic;  -- ufix1
          Serial_data_in                  :   IN    std_logic;  -- ufix1
          RECLK                           :   IN    std_logic;  -- ufix1
          PBCLK                           :   IN    std_logic;  -- ufix1
          Audio_left_out                  :   OUT   std_logic_vector(23 DOWNTO 0);  -- ufix24
          Audio_right_out                 :   OUT   std_logic_vector(23 DOWNTO 0);  -- ufix24
          new_sample                      :   OUT   std_logic;
          Serial_data_out                 :   OUT   std_logic  -- ufix1
          );
  END COMPONENT;

  -- Component Configuration Statements
  FOR ALL : I2S_SSM2603_src_I2S_controller
    USE ENTITY work.I2S_SSM2603_src_I2S_controller(rtl);

  -- Signals
  SIGNAL Audio_left_out_tmp               : std_logic_vector(23 DOWNTO 0);  -- ufix24
  SIGNAL Audio_right_out_tmp              : std_logic_vector(23 DOWNTO 0);  -- ufix24

BEGIN
  u_I2S_controller : I2S_SSM2603_src_I2S_controller
    PORT MAP( clk => clk,
              reset => reset,
              enb => enb,
              Audio_left_in => Audio_left_in,  -- ufix24
              Audio_right_in => Audio_right_in,  -- ufix24
              BCLK => BCLK,  -- ufix1
              Serial_data_in => Serial_data_in,  -- ufix1
              RECLK => RECLK,  -- ufix1
              PBCLK => PBCLK,  -- ufix1
              Audio_left_out => Audio_left_out_tmp,  -- ufix24
              Audio_right_out => Audio_right_out_tmp,  -- ufix24
              new_sample => new_sample,
              Serial_data_out => Serial_data_out  -- ufix1
              );

  Audio_left_out <= Audio_left_out_tmp;

  Audio_right_out <= Audio_right_out_tmp;

END rtl;

