customevents-scripts-kernel
instantiatedUserScriptsDo: aBlock
	"Evaluate aBlock on behalf of all the instantiated user scripts in the receiver"

	| aState aCostume |
	((aCostume := self costume) notNil and: [(aState := aCostume actorStateOrNil) notNil]) ifTrue:
		[aState instantiatedUserScriptsDictionary do: aBlock]