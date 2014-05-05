I am an abstract class for any Components a Phidget can have.


Instance Variables
	phidget:		<PhdCrPhidget>

phidget
	- the 'parent' of this component. Every component belongs to a Phidget. Only if the Phidget is attached the component is usable.
	- I need this value to invoke the primitives to talk with the plugin/Phidget hardware, because every primitive I know needs the Phidget's unique identifier (id).


I must be created with an instance of PhdCrPhidget as parameter that sets my 'phidget' instance variable (see 'class newWith:' and 'setParent').