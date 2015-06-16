pop ups
selectorMenuAsk: listOfLists
	"I represent a SelectorNode to be replaced by one of the selectors in one of the category lists.  Each list has pre-built StringMorphs in it."

	| menu |
	listOfLists isEmpty ifTrue: [^ nil].
	listOfLists first addFirst: (self aSimpleStringMorphWith: '( Cancel )').
	listOfLists first first color: Color red.
	menu := RectangleMorph new.
	menu listDirection: #leftToRight; layoutInset: 3; cellInset: 1 @ 0.
	menu layoutPolicy: TableLayout new; hResizing: #shrinkWrap; 
		vResizing: #shrinkWrap; color: (Color r: 0.767 g: 1.0 b: 0.767);
		useRoundedCorners; cellPositioning: #topLeft.
	listOfLists do: [:ll | | col |
		col := Morph new.
	 	col listDirection: #topToBottom; layoutInset: 0; cellInset: 0 @ 0.
		col layoutPolicy: TableLayout new; hResizing: #shrinkWrap.
		col color: Color transparent; vResizing: #shrinkWrap.
		menu addMorphBack: col.
		ll do: [:ss | 
			col addMorphBack: ss.
			ss on: #mouseUp send: #replaceKeyWord:menuItem: to: self]
		].
	self world addMorph: menu.
	menu setConstrainedPosition: (owner localPointToGlobal: self topRight) + (10 @ -30) 
			hangOut: false.
