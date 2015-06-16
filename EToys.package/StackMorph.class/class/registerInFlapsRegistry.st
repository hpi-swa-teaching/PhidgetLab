class initialization
registerInFlapsRegistry
	"Register the receiver in the system's flaps registry"
	self environment
		at: #Flaps
		ifPresent: [:cl | cl registerQuad: #(StackMorph	authoringPrototype	'Stack'		'A multi-card data base'	)
						forFlapNamed: 'Scripting'.
						cl registerQuad: #(StackMorph	authoringPrototype	'Stack'		'A multi-card data base'	)
						forFlapNamed: 'Stack Tools'.
						cl registerQuad: #(StackMorph	stackHelpWindow	'Stack Help'	'Some hints about how to use Stacks')
						forFlapNamed: 'Stack Tools'.
						cl registerQuad: #(StackMorph	previousCardButton	'Previous Card'	'A button that takes the user to the previous card in the stack')
						forFlapNamed: 'Stack Tools'.
						cl registerQuad: #(StackMorph	nextCardButton	'Next Card'		'A button that takes the user to the next card in the stack')
						forFlapNamed: 'Stack Tools']