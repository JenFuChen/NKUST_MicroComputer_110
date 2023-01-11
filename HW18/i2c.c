// i2c Master library for SDCC by Chin-Shiuh Shieh on 2017-12-12

// #define SCL P0_0
// #define SDA P0_1

#define i2c_OK	0
#define i2c_ER	1
#define i2c_ACK		0
#define i2c_NACK	1

unsigned char i2c_start(void);
void i2c_stop(void);
unsigned char i2c_shift_out(unsigned char buffer);
unsigned char i2c_shift_in(unsigned char ack);

unsigned char i2c_start(void) {
  SDA = 1;
  SCL = 1;
  if (SDA == 0) return (i2c_ER);
  if (SCL == 0) return (i2c_ER);
  SDA = 0;
  SCL=0;
  return (i2c_OK);
}

void i2c_stop(void) {
  SDA = 0; SCL = 1; SDA = 1;
}

unsigned char i2c_shift_out(unsigned char buffer) {
  unsigned char i;
  unsigned char ack;
  for (i = 0; i < 8; i++) {
    if (buffer >= 128) SDA = 1; else SDA = 0;
    SCL = 1; SCL = 0;
    buffer *= 2;
  }
  SDA = 1; SCL = 1; ack = SDA; SCL = 0;
  return ack;
}

unsigned char i2c_shift_in(unsigned char ack) {
  unsigned char i;
  unsigned char buffer = 0;
  SDA = 1;
  for (i = 0; i < 8; i++) {
    buffer *= 2;
    SCL = 1;
    if (SDA == 1) buffer += 1;
    SCL = 0;
  }
  SDA = ack;
  SCL = 1; SCL = 0;
  return buffer;
}