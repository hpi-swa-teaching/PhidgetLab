script editor
allScriptVersionsDo: aBlock

	self isTextuallyCoded ifFalse: [aBlock value: currentScriptEditor].
	formerScriptEditors ifNotNil: [ formerScriptEditors do: aBlock ]