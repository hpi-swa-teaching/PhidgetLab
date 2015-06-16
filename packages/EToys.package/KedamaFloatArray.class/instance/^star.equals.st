arithmetic
*= other

	other isNumber ifTrue: [
		^ self primMulScalar: self and: other asFloat into: self.
	].
	((other isMemberOf: WordArray) or: [other isMemberOf: KedamaFloatArray]) ifTrue: [	
		^ self primMulArray: self and: other into: self.
	].
	^ super *= other.
