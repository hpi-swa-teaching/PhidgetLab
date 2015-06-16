slots
slotGettersOfType: aType
	"Answer a list of gettter selectors for slots of mine of the given type"

	| aList |
	aList := OrderedCollection new.
	self slotInfo associationsDo:
		[:assoc |
			(assoc value type = aType) ifTrue:
				[aList add: assoc key asGetterSelector]].
	^ aList