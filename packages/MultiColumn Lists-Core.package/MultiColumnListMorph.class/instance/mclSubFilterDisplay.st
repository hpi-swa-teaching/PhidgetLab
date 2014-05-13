menu
mclSubFilterDisplay
	"Allow filtering based on a column."
	| columns newFilter filterColumn aMenu idx filterList |

	specifications ifNotNil: ["Let the specs deal with filtering"
		(specifications subFilterDisplayQuery) ifTrue: [self list: origObjects]. "True means we changed the filter; false means nothing changed"
		^self.
		].
	columns := header isNil ifFalse: [header strings] ifTrue: [Array streamContents: [:array| 1 to: list first size do: [:x| array nextPut: ('Column ', x asString)]]].
	aMenu := SelectionMenu 
		labelList: columns
		selections: columns.
	filterColumn := aMenu startUpWithCaption: 'Choose column to filter by'.
	filterColumn isNil ifTrue: [
		filter ifNotNil: [filter := nil.  self list: origObjects].
		^self
	].
	idx := columns indexOf: filterColumn.
	filterList := (list collect: [:a| a at: idx]) asSet asSortedCollection asOrderedCollection.
	filterList := filterList reject: [:a| a withBlanksTrimmed = ''].
	aMenu := SelectionMenu 
		labelList: filterList
		selections: filterList.
	newFilter := {idx. (aMenu startUpWithCaption: 'Choose Value to filter by'). }.
	(filter includes: newFilter) ifTrue: [^nil].
	filter add: newFilter.
	self list: origObjects