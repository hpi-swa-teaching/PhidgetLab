accessing
innerBounds
	| inner |
	inner _ super innerBounds.
	header ifNotNil: [header scrolls ifFalse: [inner _ inner top: (inner top + header neededHeight)]].
	retractableScrollBar | (submorphs includes: scrollBar) not
		ifTrue: [^ inner]
		ifFalse: [^ (scrollBarOnLeft
					ifTrue: [scrollBar right @ inner top corner: inner bottomRight]
					ifFalse: [inner topLeft corner: scrollBar left @ inner bottom])]