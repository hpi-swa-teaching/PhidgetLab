initialization
initialize
	"Initialize the stack"

	| initialBackground |
	super initialize.
	initialBackground := pages first.
	initialBackground extent: (640@480); beSticky.
	initialBackground beAStackBackground.
	self beUnsticky.
	self setProperty: #controlsAtBottom toValue: true.
	self privateCards: (OrderedCollection with: initialBackground currentDataInstance).

"self currentHand attachMorph: StackMorph authoringPrototype"