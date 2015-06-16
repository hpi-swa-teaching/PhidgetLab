player viewer
updateLiteralLabel
	| myReadout |
	(myReadout := self labelMorph) ifNil: [^ self].
	myReadout contents: literal stringForReadout.
