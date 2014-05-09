mclm interface
queryForSortOptions
	| columns prevSort accessors |

	columns := (ssmColSpecs collect: [:a| a columnName]).
	accessors := (ssmColSpecs collect: [:a| a selector]).
	prevSort := currentSort.
	currentSort := SortBlock chooseFromLabelList: columns selections: accessors.
	^currentSort ~= prevSort
