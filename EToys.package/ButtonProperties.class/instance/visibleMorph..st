accessing
visibleMorph: x

	visibleMorph ifNotNil: [self setEventHandlers: false].
	visibleMorph := x.
	visibleMorph ifNotNil: [self setEventHandlers: true].
