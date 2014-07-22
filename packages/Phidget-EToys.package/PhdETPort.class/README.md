I'm an abstract representation of all Phidgets that can be connected to the AdvancedInterfaceKit. You can drag my subclasses out of the AdvancedInterfaceKit. I am connected to the AdvancedInterfaceKit via a plug that is plugged into a connector.

Instance Variables
	phidget:		<PhdETAdvancedInterfaceKit(PhdETPortBasedPhidget)>
	plug:		<PhdETPlugMorph>
	portNumber:		<Integer>
	receivedUpdate:		<Boolean>
	wire:		<PolygonMorph>

phidget
	- The AdvancedInterfaceKit I belong to.

plug
	- The plug which connects me to the AdvancedInterfaceKit.

portNumber
	- The number/ID of the connector I am plugged into.

receivedUpdate
	- For testing only

wire
	- The wire that connects me to my plug.
