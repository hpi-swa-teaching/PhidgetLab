get/set slots
arrowSetterButton: sel args: argArray

	| m |
	m := RectangleMorph new
		color: (ScriptingSystem colorForType: #command);
		extent: 24@TileMorph defaultH;
		borderWidth: 0.
	m addMorphCentered: (ImageMorph new image: (ScriptingSystem formAtKey: 'Gets')).
	m setBalloonText: 'drag from here to obtain an assignment phrase.' translated.
	m on: #mouseDown send: sel
		to: self
		withValue: argArray.
	^ m
