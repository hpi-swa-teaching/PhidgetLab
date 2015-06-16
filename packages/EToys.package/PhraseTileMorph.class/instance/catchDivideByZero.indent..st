mouse
catchDivideByZero: aStream indent: tabCount 
	"See if I am have divide as my operator. If so, insert a test in the argument to divide."

	| exp |
	submorphs second type = #operator ifFalse: [^false].	"not me"
	exp := submorphs second operatorOrExpression.
	(#(/ // \\) includes: exp) ifFalse: [^false].	"not me"
	aStream space.
	aStream nextPutAll: '(self beNotZero: '.
	(submorphs third) storeCodeOn: aStream indent: tabCount.
	aStream nextPut: $).
	^true