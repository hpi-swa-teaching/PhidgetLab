mclm interface
filterMenu: menu
	"Add the filter options to a menu passed from the MultiColumnListMorph that we are working for."

	(currentFilter ifNil: [currentFilter _ OrderedCollection new])
	ifEmpty: [menu addList: #(#('Filter List...' #mclReFilterDisplay))]
	ifNotEmpty: [
		menu addList: #(#('Re-Filter List...' #mclReFilterDisplay)).
		menu addList: #(#('Filter In Current List...' #mclSubFilterDisplay)).
		menu addList: #(#('Remove Filter' #mclRemoveFilter)).
		currentFilter size > 1 ifTrue: [menu addList: #(#('Remove a sub-Filter' #mclRemoveSubFilter))].
		].
