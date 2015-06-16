arithmetic
-= other

	other isNumber ifTrue: [
		^ self primSubScalar: self and: other into: self.
	].
	((other isMemberOf: WordArray) or: [other isMemberOf: KedamaFloatArray]) ifTrue: [	
		^ self primSubArray: self and: other into: self.
	].
	^ super -= other.
