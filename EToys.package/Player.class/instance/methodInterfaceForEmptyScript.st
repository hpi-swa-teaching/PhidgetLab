scripts-kernel
methodInterfaceForEmptyScript
	"Answer a MethodInterface representing Andreas's 'emptyScript' feature"

	| anInterface |
	anInterface := MethodInterface new.
	anInterface receiverType: #Player.
	anInterface flagAttribute: #scripts.
	anInterface
		wording: (ScriptingSystem wordingForOperator: #emptyScript);
		helpMessage: 'an empty script; drop on desktop to get a new empty script for this object'.

	anInterface selector: #emptyScript type: nil setter: nil.
	^ anInterface