arithmetic
/= other

	other isNumber ifTrue: [
		^ self primDivScalar: self and: other into: self.
	].
	((other isMemberOf: WordArray) or: [other isMemberOf: KedamaFloatArray]) ifTrue: [	
		^ self primDivArray: self and: other into: self.
	].
	^ super /= other.
