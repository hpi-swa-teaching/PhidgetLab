menu
mclForkedSortDisplay
	| columns prevSort sel |

	specifications ifNotNil: ["Let the specs deal with sorting"
		(specifications queryForSortOptions) ifTrue: [ "True means we changed the sort; false means nothing changed"
			sel _ specifications originalObjectFor: selection value.
			self list: origObjects.
			self selection: sel].
		^self.
		].
	columns := header isNil ifFalse: [header strings] ifTrue: [Array streamContents: [:array| 1 to: list first size do: [:x| array nextPut: ('Column ', x asString)]]].
	prevSort := sort.
	sort := SortBlock chooseFromOrderedList: columns.
	sort = prevSort ifTrue: [^self].
	^self list: origObjects
