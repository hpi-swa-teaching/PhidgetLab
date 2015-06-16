other
renameScriptTo: newSelector
	"Rename the receiver's script so that it bears a new selector"

	| aMethodNodeMorph methodMorph methodSource pos newMethodSource |

	scriptName := newSelector.
	self updateHeader.
	Preferences universalTiles
		ifFalse:  "classic tiles"
			[self showingMethodPane
				ifTrue:
					["textually coded -- need to change selector"
					methodMorph := self findA: MethodMorph.
					methodSource := methodMorph text string.
					pos := methodSource indexOf: Character cr ifAbsent: [self error: 'no cr'].
					newMethodSource := newSelector.
					newSelector numArgs > 0 ifTrue: [newMethodSource := newMethodSource, ' t1'].  "for the parameter"
					newMethodSource := newMethodSource, (methodSource copyFrom: pos to: methodSource size).
					methodMorph editString: newMethodSource.
					methodMorph model changeMethodSelectorTo: newSelector.
					playerScripted class compile: newMethodSource classified: 'scripts'.
					methodMorph accept]
				ifFalse:
					[self install]]
		ifTrue:  "universal tiles..."
			[(aMethodNodeMorph := self methodNodeMorph) ifNotNil:
				[aMethodNodeMorph acceptInCategory: 'scripts']]