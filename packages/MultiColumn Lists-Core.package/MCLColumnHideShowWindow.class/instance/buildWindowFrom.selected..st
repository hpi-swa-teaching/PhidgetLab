display
buildWindowFrom: columnNames selected: selectedArray
	| y yDelta yHeight xWidth morph x |
	
	choices _ OrderedCollection new: columnNames size.
	window _ (SystemWindow labelled: 'Choose Columns to Show/Hide')
		model: nil; setWindowColor: Color gray.
	y _ 5.
	yDelta _ nil.
	columnNames with: selectedArray do: [:label :bool|
		morph _ CheckBoxMorph label: label.
		morph selected: bool.
		choices addLast: morph.
		yDelta ifNil: [
			yDelta _ morph height + 2.
			yHeight _ morph height.
			xWidth _ morph width + 6.
			].
		window addMorph: morph fullFrame: (LayoutFrame offsets: ((5 @ y) corner: (xWidth @ yHeight))).
		y _ y + yDelta.
		].
	y _ y + 5.
	morph _ (SimpleButtonMorph newWithLabel: 'OK')
		target: self; actionSelector: #ok.
	window
		addMorph: morph
		fullFrame: (LayoutFrame
			offsets: (5 @ y corner: (5 + morph width) @ (y + morph height))).
	x _ 5 + morph width + 10.
	morph _ (SimpleButtonMorph newWithLabel: 'Cancel')
		target: self; actionSelector: #cancel.
	window
		addMorph: morph
		fullFrame: (LayoutFrame
			offsets: (x @ y corner: (x + morph width) @ (y + morph height))).
