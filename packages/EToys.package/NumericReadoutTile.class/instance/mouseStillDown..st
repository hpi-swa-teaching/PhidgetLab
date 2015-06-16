event handling
mouseStillDown: evt 
	(self labelMorph notNil
			and: [self labelMorph containsPoint: evt cursorPoint])
		ifTrue: [^ self labelMorph mouseDown: evt].
	^ super mouseStillDown: evt