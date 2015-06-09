private
repositionOpenedList

	| sum |
	(openedList notNil and: [openedLabel notNil]) ifTrue: [
		sum := 0. self openedHeaderSizes do: [ :size | sum := sum + size]. sum.
		openedList
			width: sum + self class cutoffPrevention;
			position: openedLabel bottomLeft + ( 0 @ self paddingTopBottom ).
	].