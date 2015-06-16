script
editButtonsScript
	"The user has touched my Scriptor halo-handle.  Bring up a Scriptor on the script of the button."

	| cardsPasteUp cardsPlayer anEditor |
	cardsPasteUp := self pasteUpMorph.
	(cardsPlayer := cardsPasteUp assuredPlayer) assureUniClass.
	anEditor := scriptSelector ifNil: 
					[scriptSelector := cardsPasteUp scriptSelectorToTriggerFor: self.
					cardsPlayer newTextualScriptorFor: scriptSelector.
					cardsPlayer scriptEditorFor: scriptSelector
					]
				ifNotNil: 
					[(cardsPlayer class includesSelector: scriptSelector) 
						ifTrue: [cardsPlayer scriptEditorFor: scriptSelector]
						ifFalse: 
							["Method somehow got removed; I guess we start afresh"

							scriptSelector := nil.
							^self editButtonsScript]].
	anEditor showingMethodPane ifTrue: [anEditor toggleWhetherShowingTiles].
	self currentHand attachMorph: anEditor