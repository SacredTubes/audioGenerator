library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity i2c_bidir 
is Port ( 
		I2C_CLK     : in STD_LOGIC := 'Z'; 
		I2C_DATA	: in STD_LOGIC := 'Z';
		ack			: in STD_LOGIC;
		I2C_SCL		: out STD_LOGIC;
		I2C_SDA		: inout STD_LOGIC;
		sda_local	: out STD_LOGIC :='Z'
	);
end i2c_bidir;

architecture behavioral of i2c_bidir is
begin
sda_local <= '0';

process(I2C_CLK,ack)
begin
	if ack='1' then
		I2C_SDA <= 'Z';
		I2C_SCL <= I2C_CLK;
	else
		I2C_SDA <= I2C_DATA;
		I2C_SCL <= I2C_CLK;
	end if;	
end process; 
end;
