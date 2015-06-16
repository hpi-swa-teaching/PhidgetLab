slot getters/setters
setFirstElement: aPlayer 
	"Caution - this is a replacement operation!  Replace the receiver's costume's first element with the morph represented by aPlayer"

	| aCostume |
	(aPlayer == self or: [(aCostume := self costume) submorphs isEmpty]) 
		ifTrue: [^self].
	costume replaceSubmorph: aCostume submorphs first by: aPlayer costume