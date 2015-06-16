other
becomeTextuallyCoded
	"If the receiver is not currently textually coded, make it become so now, and show its source in place in the Scriptor"

	self isTextuallyCoded ifTrue: [^ self].
	self saveScriptVersion.
	Preferences universalTiles ifFalse: [self userScriptObject becomeTextuallyCoded].
	(submorphs copyFrom: 2 to: submorphs size) do: [:m | m delete]