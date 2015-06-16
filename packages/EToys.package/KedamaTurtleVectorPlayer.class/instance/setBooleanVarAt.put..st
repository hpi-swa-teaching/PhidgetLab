accessing - private
setBooleanVarAt: index put: v

	(v == true or: [v == false]) ifTrue: [
		(arrays at: index) atAllPut: (v == true ifTrue: [1] ifFalse: [0]).
		^ self.
	].
	(arrays at: index) replaceFrom: 1 to: v size with: v startingAt: 1.
