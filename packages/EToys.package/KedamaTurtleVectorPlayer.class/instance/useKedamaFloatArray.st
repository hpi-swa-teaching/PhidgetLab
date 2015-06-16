private
useKedamaFloatArray

	
	arrays withIndexDo: [:array :index | | newArray |
		(array isMemberOf: FloatArray) ifTrue: [
			newArray := KedamaFloatArray new: array size.
			newArray replaceFrom: 1 to: array size with: array startingAt: 1.
			arrays at: index put: newArray.
		].
	].
