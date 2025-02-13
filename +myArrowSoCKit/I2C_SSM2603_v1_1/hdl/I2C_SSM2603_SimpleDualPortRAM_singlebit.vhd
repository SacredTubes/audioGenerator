-- -------------------------------------------------------------
-- 
-- File Name: hdl_prj\hdlsrc\hdlcoder_I2C_ssm2603\I2C_SSM2603_SimpleDualPortRAM_singlebit.vhd
-- Created: 2020-11-19 16:10:08
-- 
-- Generated by MATLAB 9.9 and HDL Coder 3.17
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: I2C_SSM2603_SimpleDualPortRAM_singlebit
-- Source Path: I2C_SSM2603/I2C_SSM2603_axi4/I2C_SSM2603_axi4_module/I2C_SSM2603_rdfifo_last/I2C_SSM2603_rdfifo_last_classic/I2C_SSM2603_SimpleDualPortRAM_singlebit
-- Hierarchy Level: 4
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY I2C_SSM2603_SimpleDualPortRAM_singlebit IS
  GENERIC( AddrWidth                      : integer := 1;
           DataWidth                      : integer := 1
           );
  PORT( clk                               :   IN    std_logic;
        enb                               :   IN    std_logic;
        wr_din                            :   IN    std_logic;  -- ufix1
        wr_addr                           :   IN    std_logic_vector(AddrWidth - 1 DOWNTO 0);  -- generic width
        wr_en                             :   IN    std_logic;  -- ufix1
        rd_addr                           :   IN    std_logic_vector(AddrWidth - 1 DOWNTO 0);  -- generic width
        rd_dout                           :   OUT   std_logic  -- ufix1
        );
END I2C_SSM2603_SimpleDualPortRAM_singlebit;


ARCHITECTURE rtl OF I2C_SSM2603_SimpleDualPortRAM_singlebit IS

  -- Local Type Definitions
  TYPE ram_type IS ARRAY (2**AddrWidth - 1 DOWNTO 0) of std_logic;

  -- Signals
  SIGNAL ram                              : ram_type := (OTHERS => '0');
  SIGNAL data_int                         : std_logic := '0';
  SIGNAL wr_addr_unsigned                 : unsigned(AddrWidth - 1 DOWNTO 0);  -- generic width
  SIGNAL rd_addr_unsigned                 : unsigned(AddrWidth - 1 DOWNTO 0);  -- generic width

BEGIN
  wr_addr_unsigned <= unsigned(wr_addr);

  rd_addr_unsigned <= unsigned(rd_addr);

  I2C_SSM2603_SimpleDualPortRAM_singlebit_process: PROCESS (clk)
  BEGIN
    IF clk'event AND clk = '1' THEN
      IF enb = '1' THEN
        IF wr_en = '1' THEN
          ram(to_integer(wr_addr_unsigned)) <= wr_din;
        END IF;
        data_int <= ram(to_integer(rd_addr_unsigned));
      END IF;
    END IF;
  END PROCESS I2C_SSM2603_SimpleDualPortRAM_singlebit_process;

  rd_dout <= data_int;

END rtl;

