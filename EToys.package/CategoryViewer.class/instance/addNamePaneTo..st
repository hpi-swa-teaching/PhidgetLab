header pane
addNamePaneTo: header 
	"Add the namePane, which may be a popup or a type-in 
	depending on the type of CategoryViewer"
	| aButton |
	namePane := RectangleMorph newSticky color: Color brown veryMuchLighter.
	namePane borderWidth: 0.
	aButton := (StringButtonMorph
				contents: '-----'
				font: Preferences standardButtonFont)
				color: Color black.
	aButton target: self;
		 arguments: Array new;
		 actionSelector: #chooseCategory.
	aButton actWhen: #buttonDown.
	namePane addMorph: aButton.
	aButton position: namePane position.
	namePane align: namePane topLeft with: bounds topLeft + (50 @ 0).
	namePane setBalloonText: 'category (click here to choose a different one)' translated.
	header addMorphBack: namePane.
	(namePane isKindOf: RectangleMorph)
		ifTrue: [namePane addDropShadow.
			namePane shadowColor: Color gray]
