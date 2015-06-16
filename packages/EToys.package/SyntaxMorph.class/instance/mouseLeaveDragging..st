event handling
mouseLeaveDragging: evt 
	"Transcript cr; print: self; show: ' leaveDragging'."

	self rootTile isMethodNode ifFalse: [^self].	"not in a script"
	self isBlockNode 
		ifTrue: 
			[self
				stopStepping;
				removeDropZones.
			(self firstOwnerSuchThat: [:m | m isSyntaxMorph and: [m isBlockNode]]) 
				ifNotNil: [:m | m startStepping].	"Activate outer block."
			self submorphs do: 
					[:ss | 
					"cancel drop color in line beside mouse"

					ss color = self dropColor ifTrue: [ss setDeselectedColor]]].

	"Move drop highlight back out a level"
	self unhighlight.
	(owner notNil and: [owner isSyntaxMorph]) 
		ifTrue: [owner isBlockNode ifFalse: [owner highlightForDrop: evt]]