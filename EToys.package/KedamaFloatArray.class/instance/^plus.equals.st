arithmetic
+= other

	other isNumber ifTrue: [
		^ self primAddScalar: self and: other into: self.
	].
	((other isMemberOf: WordArray) or: [other isMemberOf: KedamaFloatArray]) ifTrue: [	
		^ self primAddArray: self and: other into: self.
	].
	^ super += other.
