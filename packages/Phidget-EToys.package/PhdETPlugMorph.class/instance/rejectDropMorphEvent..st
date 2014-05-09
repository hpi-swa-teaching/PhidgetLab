dropping/grabbing
rejectDropMorphEvent: anEvent
	
	| h |
	h := anEvent hand.
	WorldState addDeferredUIMessage: [h grabMorph: self].
	anEvent wasHandled: true.