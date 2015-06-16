scripts-kernel
renameScript: oldSelector newSelector: newSelector
	"Find all buttons that fire this script and tell them the new name"

	| stack |
	super renameScript: oldSelector newSelector: newSelector.
	costume allMorphsDo: [:mm |
		self retargetButton: mm oldSelector: oldSelector newSelector: newSelector].

	stack := costume valueOfProperty: #myStack.
	stack ifNotNil:
		[stack cards do: [:cc |
			cc privateMorphs do: [:pp | 
				pp allMorphsDo: [:mm |
					self retargetButton: mm oldSelector: oldSelector newSelector: newSelector]]]]