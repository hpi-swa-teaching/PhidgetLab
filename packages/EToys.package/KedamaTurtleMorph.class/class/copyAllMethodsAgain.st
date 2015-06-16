scripting
copyAllMethodsAgain
"
	KedamaTurtleMorph copyAllMethodsAgain.
"
	KedamaTurtleMorph allInstancesDo: [:e | e player ifNotNil: [e player copyAllMethodsAgain]].
