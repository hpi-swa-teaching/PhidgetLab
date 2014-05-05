primitives
primSetCursorOn: phidgetIdArray to: state
	"Set the state of the cursor to enabled (state=1) or disabled (state=0).
	Return 1 if the operation succeeded, other values otherwise."
	
	<primitive: 'primSetTextLCDCursorOn' module: 'PhidgetPlugin'>
	^ nil