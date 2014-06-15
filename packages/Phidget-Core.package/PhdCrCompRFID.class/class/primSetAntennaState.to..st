primitives
primSetAntennaState: phidgetIdArray to: state
	"Set the state of the antenna to on (state=1) or off (state=0).
	Return 1 if the operation succeeded, or other values otherwise."
	
	<primitive: 'primSetRFIDAntennaState' module: 'PhidgetPlugin'>
	^ nil