get/set slots
getterTilesFor: getterSelector type: aType 
	"Answer classic getter for the given name/type"

	"aPhrase := nil, assumed"

	| selfTile selector aPhrase |
	(#(#color:sees: #colorSees) includes: getterSelector) 
		ifTrue: [aPhrase := self colorSeesPhrase].
	(#(#getPatchValueIn:) includes: getterSelector)
		ifTrue: [aPhrase := self patchValuePhrase].
	(#(#getRedComponentIn:) includes: getterSelector)
		ifTrue: [aPhrase := self colorComponentPhraseFor: #red].
	(#(#getGreenComponentIn:) includes: getterSelector)
		ifTrue: [aPhrase := self colorComponentPhraseFor: #green].
	(#(#getBlueComponentIn:) includes: getterSelector)
		ifTrue: [aPhrase := self colorComponentPhraseFor: #blue].
	(#(#getUphillIn:) includes: getterSelector)
		ifTrue: [aPhrase := self patchUphillPhrase].
	(#(#bounceOn:) includes: getterSelector)
		ifTrue: [aPhrase := self bounceOnPhrase].
	(#(#bounceOn:color: #bounceOnColor:) includes: getterSelector)
		ifTrue: [aPhrase := self bounceOnColorPhrase].
	(getterSelector = #getDistanceTo:)
		ifTrue: [aPhrase := self distanceToPhrase].
	(getterSelector = #getAngleTo:)
		ifTrue: [aPhrase := self angleToPhrase].
	(getterSelector = #getTurtleOf:)
		ifTrue: [aPhrase := self turtleOfPhrase].
	(#(#seesColor: #isOverColor) includes: getterSelector) 
		ifTrue: [aPhrase := self seesColorPhrase].
	(#(#overlaps: #overlaps) includes: getterSelector) 
		ifTrue: [aPhrase := self overlapsPhrase].
	(#(#overlapsAny: #overlapsAny) includes: getterSelector) 
		ifTrue: [aPhrase := self overlapsAnyPhrase].
	(#(#touchesA: #touchesA) includes: getterSelector) 
		ifTrue: [aPhrase := self touchesAPhrase].
	aPhrase ifNil: 
			[aPhrase := PhraseTileMorph new setSlotRefOperator: getterSelector asSymbol
						type: aType].
	selfTile := self tileForSelf bePossessive.
	selfTile position: aPhrase firstSubmorph position.
	aPhrase firstSubmorph addMorph: selfTile.
	selector := aPhrase submorphs second.
	(#(#getPatchValueIn: getUphillIn:) includes: getterSelector) ifFalse: [
		(Vocabulary vocabularyNamed: aType capitalized) 
			ifNotNil: [:aVocab | aVocab wantsSuffixArrow ifTrue: [selector addSuffixArrow]].
	].
	selector updateLiteralLabel.
	aPhrase enforceTileColorPolicy.
	^aPhrase