accessing
originalIndexFor: displayObjectIndex
	^currentRawList indexOf: (backPointers at: displayObjectIndex )