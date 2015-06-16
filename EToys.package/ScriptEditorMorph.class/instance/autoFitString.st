menu
autoFitString
	"Answer the string to put in a menu that will invite the user to 
	switch autoFit mode"
	^ ((self hasProperty: #autoFitContents)
		ifTrue: ['<yes>']
		ifFalse: ['<no>'])
		, 'auto fit' translated