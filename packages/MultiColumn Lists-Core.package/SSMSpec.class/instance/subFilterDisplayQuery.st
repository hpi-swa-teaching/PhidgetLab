mclm interface
subFilterDisplayQuery
	"Allow filtering based on a column."
	| columns filterColumn aMenu idx filterList newFilter |

	columns := (ssmColSpecs collect: [:a| a columnName]).
	aMenu := SelectionMenu labelList: columns selections: columns.
	filterColumn := aMenu startUpWithCaption: 'Choose column to filter by'.
	filterColumn ifNil: [
		currentFilter ifNotNil: [currentFilter := nil.  ^true].
		^false
	].
	idx := columns indexOf: filterColumn.
	filterList := (ssmColSpecs at: idx)  currentValueDomain.
	filterList ifEmpty: [
		self inform: 'No values in that column to filter on'.
		^false].
	aMenu := SelectionMenu labelList: filterList selections: filterList.
	newFilter := { idx. (aMenu startUpWithCaption: 'Choose Value to filter by'). }.
	(currentFilter includes: newFilter) ifTrue: [^false].
	currentFilter addLast: newFilter.
	^true