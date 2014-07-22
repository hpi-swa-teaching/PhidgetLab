loadImage
getFullPathFrom: aName

	| aPath |
	aPath := aName asString, '.png'. 
	^ (FileDirectory uri: aPath) fullName