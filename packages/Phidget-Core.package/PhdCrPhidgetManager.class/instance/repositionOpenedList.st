private
repositionOpenedList

	| sum |
	(openedList notNil and: [openedLabel notNil]) ifTrue: [
		sum := 0. self headerSizes do: [ :size | sum := sum + size]. sum.
		openedList
			width: sum;
			position: openedLabel bottomLeft + ( 0 @ self paddingTopBottom ).
	].