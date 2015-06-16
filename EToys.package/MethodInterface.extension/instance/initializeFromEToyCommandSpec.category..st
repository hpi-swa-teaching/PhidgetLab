*Etoys
initializeFromEToyCommandSpec: tuple category: aCategorySymbol
	"tuple holds an old etoy command-item spec, of the form found in #additionsToViewerCategories methods.   Initialize the receiver to hold the same information"

	selector := tuple second.
	receiverType := #Player.
	selector numArgs = 1 ifTrue:
		[argumentVariables := OrderedCollection with:
			(Variable new name: (Player formalHeaderPartsFor: selector) fourth type: tuple fourth)].

	aCategorySymbol ifNotNil: [self flagAttribute: aCategorySymbol].
	self
		wording: (ScriptingSystem wordingForOperator: selector);
		helpMessage:  tuple third