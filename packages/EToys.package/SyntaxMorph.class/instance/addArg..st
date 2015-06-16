pop ups
addArg: index 
	"I rep a SelectorNode.  My string has been replaced.  Append an argument to my owner."

	"See if any sample args are recorded"

	| sel rec aVocabulary mi sample descrip mthNode tiles |
	sel := self decompile asString asSymbol.
	rec := self receiverObject.
	sample := rec class == Error 
				ifFalse: 
					[aVocabulary := self vocabularyToUseWith: rec.
					mi := aVocabulary methodInterfaceAt: sel ifAbsent: [nil].
					mi ifNil: [5]
						ifNotNil: 
							[descrip := mi argumentVariables at: index.
							descrip sample]]
				ifTrue: [5]. 
	mthNode := self string: sample storeString toTilesIn: sample class.
	tiles := mthNode submorphs at: mthNode submorphs size - 1.	"before the ^ self"
	self owner addMorphBack: tiles