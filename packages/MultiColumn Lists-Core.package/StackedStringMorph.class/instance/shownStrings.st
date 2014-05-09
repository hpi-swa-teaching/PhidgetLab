accessing
shownStrings
	showScreen ifNil: [^strings].
	^Array streamContents: [:str| showScreen doWithIndex: [:bool :idx| bool ifTrue: [str nextPut: (strings at: idx)]]].
