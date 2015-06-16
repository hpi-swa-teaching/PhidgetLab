miscellaneous
rowOfRightTypeFor: aLayoutMorph forActor: anActor
	aLayoutMorph demandsBoolean ifTrue:
		[^ self error: 'oops, cannot do that, please close this'].
	^ self