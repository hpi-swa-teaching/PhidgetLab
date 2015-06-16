accessing
currentTextMorphsInButton

	^visibleMorph submorphsSatisfying: [ :x | 
		x hasProperty: #textAddedByButtonProperties
	]
