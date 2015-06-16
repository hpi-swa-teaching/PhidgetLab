viewer
externalName
	"Answer an external name for the receiver.  If it has none, supply a backstop name"

	| aCostume |
	^ (aCostume := self costume) ifNotNil: [aCostume externalName] ifNil: ['an orphaned Player']