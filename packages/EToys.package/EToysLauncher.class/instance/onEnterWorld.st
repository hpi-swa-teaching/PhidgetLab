event handling
onEnterWorld
	(owner notNil
			and: [World == owner])
		ifTrue: [owner addMorphInLayer: self.
			self updatePane]
		ifFalse: [World removeActionsWithReceiver: self]