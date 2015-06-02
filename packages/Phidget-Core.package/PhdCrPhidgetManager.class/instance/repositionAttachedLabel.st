private
repositionAttachedLabel

	| maxY |
	
	(attachedLabel notNil and: [label notNil] and: [refreshButton notNil]) ifTrue: [
		maxY := label bottom max: refreshButton bottom.
		attachedLabel position: (self left @ maxY) + (self paddingLeft @ self paddingTopBottom)
	].