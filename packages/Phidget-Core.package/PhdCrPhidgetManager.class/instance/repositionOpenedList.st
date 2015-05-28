private
repositionOpenedList

	(openedList notNil and: [openedLabel notNil]) ifTrue: [
		openedList
			width: self width - ( 2* self paddingLeftRight);
			position: openedLabel bottomLeft + ( 0 @ self paddingTopBottom )].