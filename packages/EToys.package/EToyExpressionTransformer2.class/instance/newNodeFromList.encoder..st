all
newNodeFromList: aList encoder: e

	encoder := e.
	inputQueue := aList asOrderedCollection.
	stack := OrderedCollection new: 3.
