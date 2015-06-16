arithmetic
- other

	| result |
	other isNumber ifTrue: [
		result := KedamaFloatArray new: self size.
		^ self primSubScalar: self and: other into: result.
	].
	((other isMemberOf: WordArray) or: [other isMemberOf: KedamaFloatArray]) ifTrue: [	
		result := KedamaFloatArray new: self size.
		^ self primSubArray: self and: other into: result.
	].
	^ super - other.
