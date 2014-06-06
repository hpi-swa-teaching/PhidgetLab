loadImage
load: anImage

	^ self imageCache
		at: anImage
		ifAbsentPut: [ (self imageLookUpDictionary includesKey: anImage)
						ifTrue: [ Object readFrom: (self imageLookUpDictionary at: anImage) value ]
						ifFalse: [ Form fromFileNamed: (self getFullPathFrom: anImage) ] ]