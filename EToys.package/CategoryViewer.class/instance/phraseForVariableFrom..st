entries
phraseForVariableFrom: aMethodInterface
	"Return a structure consisting of tiles and controls and a readout representing a 'variable' belonging to the player, complete with an appropriate readout when indicated.  Functions in both universalTiles mode and classic mode.  Slightly misnamed in that this path is used for any methodInterface that indicates an interesting resultType."

	| anArrow slotName getterButton cover inner aRow doc setter tryer universal hotTileForSelf spacer buttonFont varName |
	aRow := ViewerLine newRow
		color: self color;
		beSticky;
		elementSymbol: (slotName := aMethodInterface selector);
		wrapCentering: #center;
		cellPositioning: #leftCenter.
	(universal := scriptedPlayer isUniversalTiles) ifFalse:
		[buttonFont := Preferences standardEToysFont.
			aRow addMorphBack: (Morph new color: self color;
					 extent: (((buttonFont widthOfString: '!') + 8) @ (buttonFont height + 6));
					 yourself)].  "spacer"
	aRow addMorphBack: (self infoButtonFor: slotName).
	aRow addMorphBack: (Morph new color: self color; extent: 0@10).  " vertical spacer"
	universal
		ifTrue:
			[inner := scriptedPlayer universalTilesForGetterOf: aMethodInterface.
			cover := Morph new color: Color transparent.
			cover extent: inner fullBounds extent.
			(getterButton := cover copy) addMorph: cover; addMorphBack: inner.
			cover on: #mouseDown send: #makeUniversalTilesGetter:event:from: 
					to: self withValue: aMethodInterface.
			aRow addMorphFront:  (tryer := ScriptingSystem tryButtonFor: inner).
			tryer color: tryer color lighter lighter]
		ifFalse:
			[hotTileForSelf := self tileForSelf bePossessive.
			hotTileForSelf  on: #mouseDown send: #makeGetter:event:from:
				to: self
				withValue: (Array with: aMethodInterface selector with: aMethodInterface resultType).
			aRow addMorphBack: hotTileForSelf.
			aRow addMorphBack: (spacer := Morph new color: self color; extent: 2@10).
			spacer on: #mouseEnter send: #addGetterFeedback to: aRow.
			spacer on: #mouseLeave send: #removeHighlightFeedback to: aRow.
			spacer on: #mouseLeaveDragging send: #removeHighlightFeedback to: aRow.
			spacer  on: #mouseDown send: #makeGetter:event:from:
				to: self
				withValue: (Array with: aMethodInterface selector with: aMethodInterface resultType).
			hotTileForSelf on: #mouseEnter send: #addGetterFeedback to: aRow.
			hotTileForSelf on: #mouseLeave send: #removeHighlightFeedback to: aRow.
			hotTileForSelf on: #mouseLeaveDragging send: #removeHighlightFeedback to: aRow.
			getterButton := self getterButtonFor: aMethodInterface selector type: aMethodInterface resultType].
	aRow addMorphBack: getterButton.
	getterButton on: #mouseEnter send: #addGetterFeedback to: aRow.
	getterButton on: #mouseLeave send: #removeHighlightFeedback to: aRow.
	getterButton on: #mouseLeaveDragging send: #removeHighlightFeedback to: aRow.
	(doc := aMethodInterface documentation) ifNotNil:
		[getterButton setBalloonText: doc].

	(scriptedPlayer slotInfo includesKey: (varName := slotName inherentSelector)) "user slot"
		ifTrue:
			["aRow addTransparentSpacerOfSize: 3@0.
			aRow addMorphBack: (self slotTypeMenuButtonFor: varName)"].

	universal ifFalse:
		[(slotName == #seesColor:) ifTrue:
			[self addIsOverColorDetailTo: aRow.
			^ aRow].
		(slotName == #touchesA:) ifTrue:
			[self addTouchesADetailTo: aRow.
			^ aRow].
		(slotName == #overlaps: or: [ slotName == #overlapsAny:]) ifTrue:
			[self addOverlapsDetailTo: aRow.
			^ aRow]].
	aRow addMorphBack: (AlignmentMorph new beTransparent).  "flexible spacer"
	(setter := aMethodInterface companionSetterSelector) ifNotNil:
		[aRow addMorphBack: (Morph new color: self color; extent: 2@10).  " spacer"
		anArrow := universal 
			ifTrue: [self arrowSetterButton: #newMakeSetterFromInterface:evt:from:  
						args: aMethodInterface]
			ifFalse: [self arrowSetterButton: #makeSetter:from:forPart:
						args: (Array with: slotName with: aMethodInterface resultType)].
		anArrow beTransparent.
		universal ifFalse:
			[anArrow on: #mouseEnter send: #addSetterFeedback to: aRow.
			anArrow on: #mouseLeave send: #removeHighlightFeedback to: aRow.
			anArrow on: #mouseLeaveDragging send: #removeHighlightFeedback to: aRow].
		aRow addMorphBack: anArrow].
	(#(color:sees: playerSeeingColor copy touchesA: overlaps: getTurtleAt: getTurtleOf:) includes: slotName) ifFalse:
 		[(universal and: [slotName == #seesColor:]) ifFalse:
			[aMethodInterface wantsReadoutInViewer ifTrue: 
				[aRow addMorphBack: (self readoutFor: slotName type: aMethodInterface resultType readOnly: setter isNil getSelector: aMethodInterface selector putSelector: setter)]]].
	anArrow ifNotNil: [anArrow step].
	^ aRow