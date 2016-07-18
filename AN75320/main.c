//----------------------------------------------------------------------------
// C main line
//----------------------------------------------------------------------------

#include <m8c.h>        // part specific constants and macros
#include "PSoCAPI.h"    // PSoC API definitions for all User Modules
#include "stdio.h"
#include "stdlib.h"

//Port0_0 = Count up Button
//Port1_0 = Set Button (input - for setting stage)and Buzzer (output - for sensing stage) 
//Port0_1 = Proximity Sensor
//Port2   = LCD

int ButtonState;
int ButtonLastState;

int i = 100;
int j = 0;
int k;
int count_final   = 100;

void main(void)
{
	// M8C_EnableGInt ; // Uncomment this line to enable Global Interrupts
	// Insert your main routine code here.
	/* Buffer used for the long to ASCII conversion */
	char LCDBuffer[16];
    LCD_1_Start();
	
	LCD_1_Position(0,0); LCD_1_PrCString("Sensor Interface");
	LCD_1_Position(1,0); LCD_1_PrCString("SetScan#:");
	
	//if set is not pushed down, continue count
	while( PRT1DR & 0x01 )
	{
		LCD_1_Position(1,11); LCD_1_PrHexInt(count_final);
		
		if( PRT0DR & 0x01) {	ButtonState = 0;	}
		else 			   {	ButtonState = 1;	}

		if( (ButtonState == 1) && (ButtonLastState == 0) )
		{   
			//do nothing
		}
		if( (ButtonState == 0) && (ButtonLastState == 1) )
		{   
			//increment the count
			i = i + 10;
			count_final = count_final + 10;
		}
		ButtonLastState = ButtonState;
	}
	
	LCD_1_Position(0,0); LCD_1_PrCString("                 ");
	LCD_1_Position(0,0); LCD_1_PrCString("Sense Mode!");
	
	j = i;
   
	while( 1 )
	{
		
		LCD_1_Position(1,0); LCD_1_PrCString("CountScan#:     ");
		LCD_1_Position(1,12); LCD_1_PrHexInt(j);
		
		if ( j <= 1 )
		{	
			for( k = 1; k <= 100; k++ )
			{
				LCD_1_Position(0,0); LCD_1_PrCString("                 ");
				LCD_1_Position(0,0); LCD_1_PrCString("Reached!!");
				PRT1DR = 0x00;
	         
	         	if( PRT0DR & 0x02) {	ButtonState = 0;	}
	         	else		          {	ButtonState = 1;	}
	   
	         	if( (ButtonState == 1) && (ButtonLastState == 0) )
	         	{   
	   
	         	}
	         	if( (ButtonState == 0) && (ButtonLastState == 1) )
	         	{   
					j=i;
	         	}
	         
			 	ButtonLastState = ButtonState;
			};
		}
      
	  	else
		{
			LCD_1_Position(0,0); LCD_1_PrCString("                 ");
			LCD_1_Position(0,0); LCD_1_PrCString("Counting!");
			PRT1DR = 0x01;
		}
		
		if( PRT0DR & 0x02) {	ButtonState = 0;	}
		else 			       {	ButtonState = 1;	}

		if( (ButtonState == 1) && (ButtonLastState == 0) )
		{   

		}
		if( (ButtonState == 0) && (ButtonLastState == 1) )
		{   
			//Sensor Became Low (Activated Proximity)
			j--;
		}
		ButtonLastState = ButtonState;		
	}
}
