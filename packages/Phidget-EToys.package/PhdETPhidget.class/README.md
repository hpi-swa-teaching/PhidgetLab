This is an abstract class defining some messages every Phidget-Morph needs.
E.g. it creates the Etoys-category 'Phidget' and adds 'Attached' and 'Label'.

Instance Variables
	phidHandle: a PhdCrPhidget
	lableMorph: a StringMorph
	
phidHandle:
	- A PhdCrPhidget used to get the values and information of the Phidget I want to display.
	
lableMorph:
	- A StringMorph showing my label.