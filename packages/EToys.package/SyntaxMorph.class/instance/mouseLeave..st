event handling
mouseLeave: evt 
	"Move grab highlight back out a level"

	"Transcript cr; print: self; show: ' leave'."

	self rootTile isMethodNode ifFalse: [^self].	"not in a script"
	self unhighlightBorder.
	(owner notNil and: [owner isSyntaxMorph]) 
		ifTrue: [owner highlightForGrab: evt]