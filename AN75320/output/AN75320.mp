Project:      output/AN75320
Build Number: 0
Date:         Thu Jul 14 08:10:09 2016
Compiler:     ICCM8C
Version:      7.04

  ROM 6% full. 1703 out of 32768 bytes used (does not include absolute areas).
  RAM 2% full. 18 bytes used (does not include stack usage).

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                             lit   01A0   00D2 =    210. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       01FE  LoadConfigTBL_an75320_Bank0
       024D  LoadConfigTBL_an75320_Bank1
       0272  __lit_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                        func_lit   0272   0002 =      2. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       0272  __func_lit_start
       0274  __func_lit_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                     psoc_config   0274   0170 =    368. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       0274  LoadConfigTBL_an75320_Ordered
       0379  LoadConfigInit
       0379  _LoadConfigInit
       0389  LoadConfig_an75320
       0389  _LoadConfig_an75320
       03E4  __psoc_config_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                     UserModules   03E4   01B7 =    439. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       03E4  LCD_1_PrCString
       03E4  _LCD_1_PrCString
       03F6  LCD_1_HEX_STR
       0406  _LCD_1_PrHexByte
       0406  LCD_1_PrHexByte
       0419  LCD_1_PrHexInt
       0419  _LCD_1_PrHexInt
       0420  LCD_1_PrString
       0420  _LCD_1_PrString
       0432  _LCD_1_Write_Data
       0432  LCD_1_WriteData
       0432  _LCD_1_WriteData
       0432  LCD_1_Write_Data
       0446  LCD_1_Control
       0446  _LCD_1_Control
       04F6  _LCD_1_Init
       04F6  LCD_1_Init
       04F6  LCD_1_Start
       04F6  _LCD_1_Start
       0565  LCD_1_ROW_OFFSET
       0569  LCD_1_Position
       0569  _LCD_1_Position
       0579  LCD_1_Delay50uTimes
       0579  _LCD_1_Delay50uTimes
       057F  LCD_1_Delay50u_Table
       0587  LCD_1_Delay50u
       0587  _LCD_1_Delay50u
       059B  __UserModules_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                            text   059B   02AC =    684. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       059B  _main
       059B  __text_start
       0847  __text_end
       0856  __xidata_end

Area                               Start  End    Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                             TOP   0068   0143 =    323. bytes (abs,ovr,rom)

       Addr  Global Symbol
      -----  --------------------------------
       0068  __Start
       0140  bGetPowerSetting
       0140  _bGetPowerSetting

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                    InterruptRAM   0000   0003 =      3. bytes (rel,con,ram)

       Addr  Global Symbol
      -----  --------------------------------
       0000  _Port_2_Data_SHADE
       0000  NO_SHADOW
       0000  _NO_SHADOW
       0000  Port_2_Data_SHADE
       0001  Port_2_DriveMode_0_SHADE
       0001  _Port_2_DriveMode_0_SHADE
       0002  Port_2_DriveMode_1_SHADE
       0002  _Port_2_DriveMode_1_SHADE

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
               virtual_registers   0003   0003 =      3. bytes (rel,con,ram)

       Addr  Global Symbol
      -----  --------------------------------
       0003  __rX
       0004  __r1
       0005  __r0

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                            data   0000   000C =     12. bytes (rel,con,ram)

       Addr  Global Symbol
      -----  --------------------------------
       0000  __data_start
       0006  _i
       0008  _j
       000A  _count_final
       000C  _k
       000E  _ButtonLastState
       0010  _ButtonState

Files Linked      [ module(s) ]

./obj/boot.o	[ boot.asm ]
./obj/main.o	[ main.c ]
<library>	[ psocconfigtbl.asm, psocconfig.asm, lcd_1.asm, rX.asm, r1.asm, r0.asm ]

Area Definitions

-blit:0x1a0.0x7fff
-bdata:0.0x6ff
-BInterruptRAM:0	allocated at: 0
-Bvirtual_registers	allocated at: 0x3
-Ban75320_RAM

