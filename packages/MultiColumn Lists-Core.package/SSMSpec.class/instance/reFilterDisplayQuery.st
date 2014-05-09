mclm interface
reFilterDisplayQuery
	"Allow filtering based on a column."
	| columns filterColumn aMenu idx filterList newFilter ssmcs |

	columns := (ssmColSpecs collect: [:a| a columnName]).
	aMenu := SelectionMenu labelList: columns selections: columns.
	filterColumn := aMenu startUpWithCaption: 'Choose column to filter by'.
	filterColumn ifNil: [
		currentFilter ifNotNil: [currentFilter := nil.  ^true].
		^false
	].
	idx := columns indexOf: filterColumn.
	(currentFilter ifNil: [currentFilter _ OrderedCollection new]) isEmpty
		ifTrue: [filterList := (ssmColSpecs at: idx)  currentValueDomain]
		ifFalse: [
			ssmcs := ssmColSpecs at: idx.
			ssmcs initializeForNewList.
			currentRawList do: [:a| ssmcs displayStringFrom: a inDomain: true].
			filterList := ssmcs currentValueDomain.
			].
	aMenu := SelectionMenu labelList: filterList selections: filterList.
	newFilter := { idx. (aMenu startUpWithCaption: 'Choose Value to filter by'). }.
	(currentFilter includes: newFilter) ifTrue: [^false].
	currentFilter := OrderedCollection with: newFilter.
	^true