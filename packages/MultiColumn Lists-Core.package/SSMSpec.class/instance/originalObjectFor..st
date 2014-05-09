accessing
originalObjectFor: displayObjectIndex
	displayObjectIndex ifNil: [^nil].
	^backPointers at: displayObjectIndex ifAbsent: [nil]