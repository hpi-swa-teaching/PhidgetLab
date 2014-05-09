primitives
primSetBacklightOn: phidgetIdArray to: state
	"Set the state of the backlight to enabled (state=1) or disabled (state=0).
	Return 1 if the operation succeeded, other values otherwise."
	
	<primitive: 'primSetTextLCDBacklightOn' module: 'PhidgetPlugin'>
	^ nil