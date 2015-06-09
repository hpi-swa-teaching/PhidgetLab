private
repositionAttachedList
	
	| sum |

	(attachedList notNil and: [attachedLabel notNil]) ifTrue: [
		sum := 0. self attachedHeaderSizes do: [ :size | sum := sum + size]. sum.
		attachedList
			width: sum + self class cutoffPrevention;
			position: attachedLabel bottomLeft + ( 0 @ self paddingTopBottom ).
	].