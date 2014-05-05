A PhdETPortBasedPhidget is an abstract class that enables Phidget Morphs to have (multiple) Ports.
Therefore I use my bin.

Instance Variables
	bin:		a PhdETPartsBin
	ports:	an OrderedCollection

bin
	- A parts bin that works much the same like the object tools PartsBin. You can drag Ports out of it.

ports
	- An OrderedCollection holding all the port that were dragged out of me.
