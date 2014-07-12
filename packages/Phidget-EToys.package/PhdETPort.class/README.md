I represent all Phidgets that can be connected to the AdvancedInterfaceKit. You can drag me out of the AdvancedInterfaceKit. I am connected to the AdvancedInterfaceKit via a plug that is plugged into a connector.

Instance Variables
	phidget:		<PhdETPortBasedPhidget>
	plug:		<PhdETPlugMorph>
	portNumber:		<Integer>
	receivedUpdate:		<Boolean>
	wire:		<PolygonMorph>

phidget
	- The AdvancedInterfaceKit I belong to.

plug
	- the plugged that I am plugged in with.

portNumber
	- The number of the connector I am plugged into.

receivedUpdate
	- For testing only

wire
	- The wire that connects me to my plug.
