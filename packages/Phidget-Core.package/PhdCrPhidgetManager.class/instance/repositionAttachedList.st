private
repositionAttachedList
	
	(attachedList notNil and: [attachedLabel notNil]) ifTrue: [
		attachedList
			width: self width - ( self paddingLeft + self paddingRight);
			position: attachedLabel bottomLeft + ( 0 @ self paddingTopBottom ).
	].