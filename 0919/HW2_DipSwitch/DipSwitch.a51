 ORG 0000h
REPEAT: CLR P2.7
  SETB P2.0
  LCALL DELAY
  
  CLR P2.0
  SETB p2.1
  LCALL DELAY
  
  CLR P2.1
  SETB p2.2
  LCALL DELAY
  
  CLR P2.2
  SETB p2.3
  LCALL DELAY
  
  CLR P2.3
  SETB p2.4
  LCALL DELAY
  
  CLR P2.4
  SETB p2.5
  LCALL DELAY
  
  CLR P2.5
  SETB p2.6
  LCALL DELAY
  
  CLR P2.6
  SETB p2.7
  LCALL DELAY
  
  
  SJMP REPEAT
  
DELAY: MOV R0,0FFh
LOOP1: MOV R1,0FFh
LOOP2:  DJNZ R1,LOOP2
  DJNZ R0,LOOP1
  RET
  END