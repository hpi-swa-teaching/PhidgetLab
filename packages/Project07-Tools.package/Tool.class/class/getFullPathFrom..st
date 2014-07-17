importImage
getFullPathFrom: aName

	| aPath |
	aPath := self imageFolder, FileDirectory slash, aName asString, '.png'. 
	^ (FileDirectory uri: aPath) fullName