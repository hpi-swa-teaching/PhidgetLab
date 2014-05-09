primitives
primCursorIsBlinking: phidgetIdArray
	"Answer 1 if the cursor is blinking, or other values otherwise."
	
	<primitive: 'primIsTextLCDCursorBlinking' module: 'PhidgetPlugin'>
	^ 0