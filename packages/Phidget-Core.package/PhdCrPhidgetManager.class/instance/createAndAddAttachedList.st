private
createAndAddAttachedList

	attachedList := MultiColumnListMorph
		on: nil
		list: #()
		initialSelectedObject: nil
		changeSelected: nil.
	attachedList header: #( 'Type' 'SN' 'Label' 'Class Code' 'Type Code' ).
	(attachedList findA: MultiColumnListHeader)
		backgroundColor: Color gray muchLighter;
		changed.
	
	self addMorph: attachedList.