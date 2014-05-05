I am a representation of a Phidget called 'Text LCD' in Squeak.
To use the Text LCD, create a new instance and open a connection to the hardware board with:
	lcd := PhdCrTextLCD new.
	lcd openAny.
A block can be set to be evaluated every time the hardware board was attached, detached or an error occoured. For example:
	lcd
		on: #Attach do: [ Transcript show:'lcd was attached!';cr ];
		on: #Detach do: [ Transcript show:'lcd was detached!';cr ];


Instance Variables
	textLCD:		<PhdCrCompTextLCD>

textLCD
	- a Text LCD Component that implements the "real" funcitionality of this Phidget. See its class comment for further information. When the Phidget is attached the rows of the component are initialized, when it is not, they are cleared.
