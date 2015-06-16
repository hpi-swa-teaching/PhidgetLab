layout
addUnaryRow: aStringLikeItem style: aSymbol

	| row sMorph modifiedString fontToUse |

	(row := self class row: #text on: nil) borderWidth: 1.
	modifiedString := self substituteKeywordFor: aStringLikeItem.
	sMorph := self addString: modifiedString special: true.
	fontToUse := self fontToUseForSpecialWord: modifiedString.

	sMorph 
		font: fontToUse emphasis: 1;
		setProperty: #syntacticReformatting toValue: #unary.
	modifiedString = aStringLikeItem ifFalse: [
		sMorph setProperty: #syntacticallyCorrectContents toValue: aStringLikeItem].
	row addMorph: sMorph.
	self addMorphBack: row.
	^row