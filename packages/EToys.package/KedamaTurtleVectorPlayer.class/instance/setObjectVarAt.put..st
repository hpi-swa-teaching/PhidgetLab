accessing - private
setObjectVarAt: index put: v

	(v isKindOf: Array) ifFalse: [
		(arrays at: index) atAllPut: v.
		^ self.
	].
	(arrays at: index) replaceFrom: 1 to: v size with: v startingAt: 1.
