accessing - private
setColorVarAt: index put: cPixel

	cPixel isNumber ifTrue: [
		(arrays at: index) atAllPut: cPixel.
		^ self.
	].

	(arrays at: index) replaceFrom: 1 to: cPixel size with: cPixel startingAt: 1.
