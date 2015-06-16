events-processing
handlerForMouseDown: anEvent
	"Return the (prospective) handler for a mouse down event. The handler is temporarily installed and can be used for morphs further down the hierarchy to negotiate whether the inner or the outer morph should finally handle the event"
	| aPoint |
	upArrow ifNotNil:
		[(upArrow bounds containsPoint: (aPoint := anEvent cursorPoint))
			ifTrue: [^self].
		(downArrow bounds containsPoint: aPoint)
			ifTrue: [^self]].

	^super handlerForMouseDown: anEvent