viewer
infoFor: anElement inViewer: aViewer 
	"The user made a gesture asking for info/menu relating"

	| aMenu elementType aSelector |
	elementType := self elementTypeFor: anElement
				vocabulary: aViewer currentVocabulary.
	elementType = #systemSlot | (elementType == #userSlot) 
		ifTrue: [^self slotInfoButtonHitFor: anElement inViewer: aViewer].
	aMenu := MenuMorph new defaultTarget: self.
	aMenu defaultTarget: self.
	aSelector := anElement asSymbol.
	elementType == #userScript 
		ifTrue: 
			[aMenu 
				add: 'destroy "' translated , anElement , '"'
				selector: #removeScriptWithSelector:
				argument: aSelector.
			aMenu 
				add: 'rename  "' translated, anElement , '"'
				selector: #renameScript:
				argument: aSelector.
			aMenu 
				add: 'textual scripting pane' translated
				selector: #makeIsolatedCodePaneForSelector:
				argument: aSelector.
			aSelector numArgs > 0 
				ifTrue: 
					[aMenu 
						add: 'remove parameter' translated
						selector: #ceaseHavingAParameterFor:
						argument: aSelector]
				ifFalse: 
					[aMenu 
						add: 'add parameter' translated
						selector: #startHavingParameterFor:
						argument: aSelector.
					aMenu 
						add: 'button to fire this script' translated
						selector: #tearOffButtonToFireScriptForSelector:
						argument: aSelector].
			aMenu 
				add: 'edit balloon help' translated
				selector: #editDescriptionForSelector:
				argument: aSelector].
	aMenu 
		add: 'show categories....' translated
		target: aViewer
		selector: #showCategoriesFor:
		argument: aSelector.
	aMenu items isEmpty 
		ifTrue: 
			["Never 0 at the moment because of show categories addition"

			aMenu add: 'ok' translated action: nil].
	aMenu addTitle: anElement asString , ' (' , elementType translated , ')'.
	aMenu popUpInWorld: aViewer world