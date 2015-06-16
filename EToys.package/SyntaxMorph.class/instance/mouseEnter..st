event handling
mouseEnter: evt
	"Highlight this level as a potential grab target"

"Transcript cr; print: self; show: ' enter'."
	self rootTile isMethodNode ifFalse: [^ self]. 	"not in a script"
	self unhighlightOwnerBorder.
	self highlightForGrab: evt.
	evt hand newKeyboardFocus: self.
