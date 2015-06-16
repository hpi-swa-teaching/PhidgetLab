as yet unclassified
addNewChildAfter: anotherOrNilOrZero

	| where newNode |

	anotherOrNilOrZero = 0 ifTrue: [
		newNode := EToyTextNode newNode.
		children := {newNode} asOrderedCollection,children.
		^newNode
	].
	where := children indexOf: anotherOrNilOrZero ifAbsent: [children size].
	children add: (newNode := EToyTextNode newNode) afterIndex: where.
	^newNode
