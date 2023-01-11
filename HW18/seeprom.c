// Serial EEPROM (AT24xx) library for SDCC by Chin-Shiuh Shieh on 2011-04-04

// #include "i2c.c"

void seeprom_write_byte(unsigned char seeprom_device_address, unsigned int seeprom_memory_address, unsigned char seeprom_byte_data);
unsigned char seeprom_read_byte(unsigned char seeprom_device_address, unsigned int seeprom_memory_address);

void seeprom_write_byte(unsigned char seeprom_device_address, unsigned int seeprom_memory_address, unsigned char seeprom_byte_data)
{
seeprom_write_byte_start:
if(i2c_start()==i2c_ER)
	goto seeprom_write_byte_start;
if(i2c_shift_out(0xA0|(seeprom_device_address*2+0))==i2c_NACK)
	{i2c_stop();goto seeprom_write_byte_start;}
if(i2c_shift_out(seeprom_memory_address/256)==i2c_NACK)
	{i2c_stop();goto seeprom_write_byte_start;}
if(i2c_shift_out(seeprom_memory_address%256)==i2c_NACK)
	{i2c_stop();goto seeprom_write_byte_start;}
if(i2c_shift_out(seeprom_byte_data)==i2c_NACK)
	{i2c_stop();goto seeprom_write_byte_start;}
i2c_stop();
}

unsigned char seeprom_read_byte(unsigned char seeprom_device_address, unsigned int seeprom_memory_address)
{
unsigned char seeprom_byte_data;
seeprom_read_byte_start:
if(i2c_start()==i2c_ER)
	goto seeprom_read_byte_start;
if(i2c_shift_out(0xA0|(seeprom_device_address*2+0))==i2c_NACK)
	{i2c_stop();goto seeprom_read_byte_start;}
if(i2c_shift_out(seeprom_memory_address/256)==i2c_NACK)
	{i2c_stop();goto seeprom_read_byte_start;}
if(i2c_shift_out(seeprom_memory_address%256)==i2c_NACK)
	{i2c_stop();goto seeprom_read_byte_start;}
if(i2c_start()==i2c_ER)
	goto seeprom_read_byte_start;
if(i2c_shift_out(0xA0|(seeprom_device_address*2+1))==i2c_NACK)
	{i2c_stop();goto seeprom_read_byte_start;}
seeprom_byte_data=i2c_shift_in(i2c_NACK);
i2c_stop();
return seeprom_byte_data;
}	
