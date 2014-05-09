instance creation
defaultUnCheckedMorph: label 
	| unCheckedMorph |
	unCheckedMorph _ RectangleMorph new initialize.
	unCheckedMorph color: Color lightGray.
	unCheckedMorph borderRaised.
	unCheckedMorph height: label height + 2.
	unCheckedMorph width: label height + 2.
	^ unCheckedMorph