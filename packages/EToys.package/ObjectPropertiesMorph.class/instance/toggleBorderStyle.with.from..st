panes
toggleBorderStyle: provider with: arg1 from: arg2
	| oldStyle newStyle |
	oldStyle := myTarget borderStyle.
	newStyle := provider borderStyle copy.
	oldStyle width = 0 
		ifTrue:[newStyle width: 2]
		ifFalse:[newStyle width: oldStyle width].
	newStyle baseColor: oldStyle baseColor.
	myTarget borderStyle: newStyle.
	provider owner owner submorphsDo:[:m| m borderWidth: 0].
	provider owner borderWidth: 1.