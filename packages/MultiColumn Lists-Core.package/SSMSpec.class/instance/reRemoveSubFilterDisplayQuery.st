mclm interface
reRemoveSubFilterDisplayQuery
	"Allow filtering based on a column."
	| columns aMenu oldFilter |

	currentFilter size < 1 ifTrue: [^false].
	currentFilter size = 1 ifTrue: [
		currentFilter := nil.
		^true
		].
	columns := (currentFilter collect: [:a| (ssmColSpecs at: (a first)) columnName]).
	aMenu := SelectionMenu labelList: columns selections: columns.
	oldFilter := aMenu startUpWithCaption: 'Choose column to remove filter from'.
	oldFilter ifNil: [^false].
	currentFilter := currentFilter reject: [:a| (ssmColSpecs at: a first) columnName = oldFilter].
	^true
