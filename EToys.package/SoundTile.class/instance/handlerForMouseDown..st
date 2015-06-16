mouse handling
handlerForMouseDown: anEvent
	"Return the (prospective) handler for a mouse down event. The handler is temporarily installed and can be used for morphs further down the hierarchy to negotiate whether the inner or the outer morph should finally handle the event"

	^ ((self findA: UpdatingStringMorph) bounds containsPoint: anEvent cursorPoint)
		ifTrue:
			[self]
		ifFalse:
			[super handlerForMouseDown: anEvent]