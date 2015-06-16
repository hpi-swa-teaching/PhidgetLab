scripts-kernel
newTextualScriptorFor: aSelector
	"Sprout a scriptor for aSelector, opening up in textual mode.  Rather special-purpose, consult my lone sender"

	| aMethodWithInterface aScriptEditor |
	(self class includesSelector: aSelector) ifTrue: [self error: 'selector already exists'].

	aMethodWithInterface := self class permanentUserScriptFor: aSelector player: self.
	aScriptEditor := aMethodWithInterface instantiatedScriptEditorForPlayer: self.
	aScriptEditor install.
	aScriptEditor showSourceInScriptor.
	aMethodWithInterface selector numArgs = 0 ifTrue:
		[self class allSubInstancesDo: [:anInst | anInst scriptInstantiationForSelector: aMethodWithInterface selector]].
		"The above assures the presence of a ScriptInstantiation for the new selector in all siblings"

	self updateAllViewersAndForceToShow: #scripts.
	^ aScriptEditor