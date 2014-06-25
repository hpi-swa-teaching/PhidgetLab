plugging
leaveConnector: anEvent

	| h |
	self unplug.
	h := anEvent hand.
	WorldState addDeferredUIMessage: [h grabMorph: self].
	anEvent wasHandled: true.
	
	