accessing
label
	"Answer a string representing the label of the receiver, returning an empty string if necessary"

	| aStringMorph |
	^ (aStringMorph := self findA: StringMorph)
		ifNil:		['']
		ifNotNil:	[aStringMorph contents]