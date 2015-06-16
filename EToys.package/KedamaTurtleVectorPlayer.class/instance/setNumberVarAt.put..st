accessing - private
setNumberVarAt: index put: v

	v isNumber ifTrue: [
		(arrays at: index) atAllPut: v.
		^ self.
	].
	(v isMemberOf: KedamaFloatArray) ifTrue: [
		(arrays at: index) replaceFrom: 1 to: v size with: v startingAt: 1.
		^ self.
	].
	(v isMemberOf: WordArray) ifTrue: [
		v primAddScalar: v and: 0.0 into: (arrays at: index).
		^ self.
	].
