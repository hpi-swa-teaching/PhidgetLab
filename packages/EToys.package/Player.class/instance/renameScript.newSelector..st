scripts-kernel
renameScript: oldSelector newSelector: newSelector
	"Rename the given script to have the new selector"

	| aUserScript anInstantiation |
	oldSelector = newSelector ifTrue: [^ self].

	oldSelector numArgs = 0
		ifTrue:
			[self class allSubInstancesDo:
				[:aPlayer | | itsCostume aDict |
					anInstantiation := aPlayer scriptInstantiationForSelector: oldSelector.
					anInstantiation ifNotNil: [
						newSelector numArgs = 0
							ifTrue:
								[anInstantiation changeSelectorTo: newSelector].
						aDict := aPlayer costume actorState instantiatedUserScriptsDictionary.
						itsCostume := aPlayer costume renderedMorph.
						itsCostume renameScriptActionsFor: aPlayer from: oldSelector to: newSelector.
						self currentWorld renameScriptActionsFor: aPlayer from: oldSelector to: newSelector.
						aDict removeKey: oldSelector.

						newSelector numArgs  = 0 ifTrue:
							[aDict at: newSelector put: anInstantiation.
							anInstantiation assureEventHandlerRepresentsStatus]]]]
		ifFalse:
			[newSelector numArgs = 0 ifTrue:
				[self class allSubInstancesDo:
					[:aPlayer |
						anInstantiation := aPlayer scriptInstantiationForSelector: newSelector.
						anInstantiation ifNotNil: [anInstantiation assureEventHandlerRepresentsStatus]]]].

	aUserScript := self class userScriptForPlayer: self selector: oldSelector.

	aUserScript renameScript: newSelector fromPlayer: self.
		"updates all script editors, and inserts the new script in my scripts directory"

	self class removeScriptNamed: oldSelector.
	((self existingScriptInstantiationForSelector: newSelector) notNil and:
		[newSelector numArgs > 0]) ifTrue: [self error: 'ouch'].
		
	self updateAllViewersAndForceToShow: 'scripts'