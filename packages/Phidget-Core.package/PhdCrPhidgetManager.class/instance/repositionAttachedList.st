private
repositionAttachedList
	
	(attachedList notNil and: [attachedLabel notNil]) ifTrue: [
		attachedList
			width: self width - ( 2* self paddingLeftRight);
			position: attachedLabel bottomLeft + ( 0 @ self paddingTopBottom ).
	].