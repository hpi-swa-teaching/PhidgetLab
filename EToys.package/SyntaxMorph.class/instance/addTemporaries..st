node to morph
addTemporaries: temporaries 
	| tempMorph outerMorph w2 |
	temporaries notEmpty ifFalse: [^self].
	self alansTest1 
		ifFalse: 
			[tempMorph := self addRow: #tempVariable on: MethodTempsNode new.
			temporaries do: [:temp | temp asMorphicSyntaxIn: tempMorph]
				separatedBy: 
					[tempMorph addMorphBack: (tempMorph transparentSpacerOfSize: 4 @ 4)].
			^self].
	outerMorph := self addRow: #tempVariable on: nil.
	outerMorph setSpecialTempDeclarationFormat1.
	outerMorph 
		addMorphBack: (w2 := self noiseStringMorph: self noiseBeforeBlockArg).
	w2 emphasis: TextEmphasis bold emphasisCode.
	tempMorph := outerMorph addRow: #tempVariable on: MethodTempsNode new.
	tempMorph setSpecialTempDeclarationFormat2.
	temporaries do: 
			[:temp | 
			tempMorph 
				addToken: temp name
				type: #tempVariableDeclaration
				on: temp]
		separatedBy: [tempMorph addMorphBack: self tokenVerticalSeparator]