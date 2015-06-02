private
createAndAddOpenedList

	openedList := MultiColumnListMorph
		on: nil
		list: #()
		initialSelectedObject: nil
		changeSelected: nil.
	openedList header: #( 'Type' 'SN' 'Label' 'Attached' 'Class Code' 'Type Code' ).
	(openedList findA: MultiColumnListHeader)
		backgroundColor: Color gray muchLighter;
		changed.

	self addMorph: openedList.