event handling
mouseEnterDragging: evt
	"Highlight this level as a potential drop target"

"self isBlockNode ifTrue: [Transcript cr; print: self; show: ' enterDragging']."
	self rootTile isMethodNode ifFalse: [^ self]. 	"not in a script"

	evt hand hasSubmorphs ifFalse: [^ self].  "Don't react to empty hand"
	self unhighlightOwnerBorder.
	self isBlockNode ifFalse: [self highlightForDrop: evt.
		(self firstOwnerSuchThat: [:m | m isSyntaxMorph and: [m color = self dropColor]])
			ifNotNil: [:m | m unhighlight]].

	self isBlockNode ifTrue:
		[(self firstOwnerSuchThat: [:m | m isSyntaxMorph and: [m isBlockNode]])
			ifNotNil: [:m | "Suspend outer block."
						m stopStepping; removeDropZones].
		self startStepping]
