scripts-kernel
scriptInstantiationForSelector: aSelector
	"Answer a script instantiation for the given selector, creating it at this time if necessary"

	|  entry scriptDict classEntry actorState |
	actorState := self actorState.
	actorState ifNil: [^ nil].
	scriptDict := actorState instantiatedUserScriptsDictionary.
	entry := scriptDict at: aSelector ifAbsent: [nil].
	entry ifNil:
		[classEntry := self class userScriptForPlayer: self selector: aSelector.
		entry := ScriptInstantiation new player: self selector: aSelector status: classEntry defaultStatus.
		scriptDict at: aSelector put: entry].
	^ entry