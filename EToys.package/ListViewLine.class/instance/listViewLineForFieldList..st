e-toy support
listViewLineForFieldList: aFieldList
	"Answer a list view line containing data representing the items in aFieldList"

	^ objectRepresented == self
		ifFalse:
			[objectRepresented listViewLineForFieldList: aFieldList]
		ifTrue:
			[super listViewLineForFieldList: aFieldList]