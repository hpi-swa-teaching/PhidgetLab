slot getters/setters
getNewClone
	"Answer a new player of the same class as the receiver, with a costume much like mine"

	| clone |
	clone :=  costume usableSiblingInstance.
	costume pasteUpMorph ifNotNil: [:parent | parent addMorph: clone].
	^ clone player
