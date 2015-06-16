background
sortByField: varName
	"Perform a simple reordering of my cards, sorting by the given field name.  If there are multiple backgrounds, then sort the current one, placing all its cards first, followed by all others in unchanged order"

	| holdCards thisClassesInstances sortedList |
	holdCards := self privateCards copy.

	thisClassesInstances := self privateCards select: [:c | c isKindOf: self currentCard class].
	sortedList := thisClassesInstances asSortedCollection:
		[:a :b | (a instVarNamed: varName) asString <= (b instVarNamed: varName) asString].
	sortedList := sortedList asOrderedCollection.
	holdCards removeAllFoundIn: sortedList.
	self privateCards:  (sortedList asOrderedCollection, holdCards).
	self goToFirstCardOfStack
