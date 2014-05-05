A PhdETPort represents a PhdCrMultiComponent with the corresponding index.

Instance Variables
	numberString:	a StringMoroh
	phidget:			a PhdETPhidget
	portNumber:	an Integer
	wire:			a PolygonMorph

numberString
	- The StringMorph displaying the portNumber.

phidget
	- The PhdETPhidget I belong to.

portNumber
	- The index of the PhdCrMultiComponent I represent.

wire
	- A line (PolygonMorph) which visiualizes the connection to my belonging PhdETPhidget.
