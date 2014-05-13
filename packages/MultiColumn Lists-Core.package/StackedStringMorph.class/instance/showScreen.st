accessing
showScreen
	"Return an array of which indexes are being shown"

	^Array streamContents: [:strm| showScreen doWithIndex: [:bool :idx| bool ifTrue: [strm nextPut: idx]]]
