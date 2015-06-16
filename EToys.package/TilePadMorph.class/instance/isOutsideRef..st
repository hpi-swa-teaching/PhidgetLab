miscellaneous
isOutsideRef: aParseNode
	"Is this a reference to an outside Player, of the form (self class refUnscriptedPlayer1)?
(MessageNode (VariableNode 'self') (SelectorNode 'class')) (SelectorNode 'refUnscriptedPlayer1')"

	| rec |
	((rec := aParseNode receiver) isKindOf: MessageNode) ifFalse: [^ false].
	rec receiver isSelfPseudoVariable ifFalse: [^ false].
	rec selector key == #class ifFalse: [^ false].
	aParseNode selector key numArgs = 0 ifFalse: [^ false].
	(aParseNode selector key beginsWith: 'ref') ifFalse: [^ false].
	^ true
