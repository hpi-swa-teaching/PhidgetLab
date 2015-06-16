rename
renameScript: newSelector fromPlayer: aPlayer
	"The receiver's selector has changed to the new selector.  Get various things right, including the physical appearance of any Scriptor open on this method"

	self allScriptEditors do:
		[:aScriptEditor | aScriptEditor renameScriptTo: newSelector].

	(selector numArgs = 0 and: [newSelector numArgs = 1])
		ifTrue:
			[self argumentVariables: (OrderedCollection with:
				(Variable new name: #parameter type: #Number))].
	(selector numArgs = 1 and: [newSelector numArgs = 0])
		ifTrue:
			[self argumentVariables: OrderedCollection new].

	selector := newSelector asSymbol.
	self bringUpToDate.
	self playerClass atSelector: selector putScript: self.
	self allScriptActivationButtons do:
		[:aButton | aButton bringUpToDate].

