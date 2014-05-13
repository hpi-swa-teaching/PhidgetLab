menu
getMenu: shiftKeyState 
	"Answer the menu for this text view, supplying a menu (with optional standard facilities) to be filled in. If the menu selector takes an extra argument, pass in the current state of the shift key."

	| menu aMenu aTitle |
	menu := MenuMorph new defaultTarget: self.
	aTitle := getMenuTitleSelector isNil 
				ifTrue: ['List Options']
				ifFalse: [model perform: getMenuTitleSelector].
	menu addList: #(#-).
	self allowsSorting 
		ifTrue: [menu addList: #(#('Sort List...' #mclSortDisplay))].
	self allowsRowFiltering ifTrue: [
		specifications isNil
		ifFalse: ["Let the specs deal with filtering"
			specifications filterMenu: menu.
			]
		ifTrue: [
			filter ifEmpty: [
				menu addList: #(#('Filter List...' #mclReFilterDisplay))
				]
			ifNotEmpty: [
				menu addList: #(#('Re-Filter List...' #mclReFilterDisplay)).
				menu addList: #(#('Filter In Current List...' #mclSubFilterDisplay)).
				menu addList: #(#('Remove Filter' #mclRemoveFilter)).
				filter size > 1 ifTrue: [menu addList: #(#('Remove a sub-Filter' #mclRemoveSubFilter))].
				].
			].
		].
	self allowsColumnFiltering 
		ifTrue: [menu addList: #(#('Show/Hide Columns' #mclShowHide))].
	menu addList: #(#-).
	getMenuSelector isNil ifTrue: [^menu].
	getMenuSelector numArgs = 1 
		ifTrue: 
			[aMenu := model perform: getMenuSelector with: menu.
			aTitle ifNotNil: [aMenu addTitle: aTitle].
			^aMenu].
	getMenuSelector numArgs = 2 
		ifTrue: 
			[aMenu := model 
						perform: getMenuSelector
						with: menu
						with: shiftKeyState.
			aTitle ifNotNil: [aMenu addTitle: aTitle].
			^aMenu].
	^self error: 'The getMenuSelector must be a 1- or 2-keyword symbol'