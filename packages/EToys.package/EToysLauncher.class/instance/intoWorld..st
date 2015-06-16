initialization
intoWorld: aWorld 
	"World removeActionsForEvent: #aboutToEnterWorld"
	super intoWorld: aWorld.
	aWorld
		when: #aboutToEnterWorld
		send: #onEnterWorld
		to: self