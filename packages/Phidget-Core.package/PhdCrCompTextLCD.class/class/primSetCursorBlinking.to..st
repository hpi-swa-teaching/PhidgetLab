primitives
primSetCursorBlinking: phidgetIdArray to: state
	"Set the state of the cursor to blinking (state=1) or not blinking (state=0).
	Return 1 if the operation succeeded, other values otherwise."
	
	<primitive: 'primSetTextLCDCursorBlinking' module: 'PhidgetPlugin'>
	^ nil