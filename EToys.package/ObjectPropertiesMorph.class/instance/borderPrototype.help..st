panes
borderPrototype: aBorderStyle help: helpString
	| selector proto |
	selector := BorderedMorph new.
	selector borderWidth: 0.
	selector color: Color transparent.
	proto := Morph new extent: 16@16.
	proto color:  Color transparent.
	proto borderStyle: aBorderStyle.
	selector extent: proto extent + 4.
	selector addMorphCentered: proto.
	(myTarget canDrawBorder: aBorderStyle) ifTrue:[
		selector setBalloonText: helpString.
		selector on: #mouseDown send: #toggleBorderStyle:with:from: to: self withValue: proto.
		(myTarget borderStyle species == aBorderStyle species and:[
			myTarget borderStyle style == aBorderStyle style]) ifTrue:[selector borderWidth: 1].
	] ifFalse:[
		selector setBalloonText: 'This border style cannot be used here' translated.
		selector on: #mouseDown send: #beep to: Beeper.
		selector addMorphCentered: ((Morph new) color: (Color black alpha: 0.5); extent: selector extent).
	].
	^selector