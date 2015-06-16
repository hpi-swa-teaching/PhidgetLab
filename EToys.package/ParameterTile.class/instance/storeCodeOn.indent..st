code generation
storeCodeOn: aStream indent: tabCount
	"Store code on the stream"
 
	| myTypeString |
	myTypeString := self resultType.
	(self scriptEditor hasParameter and: [self scriptEditor typeForParameter = myTypeString])
		ifTrue:
			[aStream nextPutAll: 'parameter']
		ifFalse:
			["This script no longer bears a parameter, yet there's an orphaned Parameter tile in it"
			aStream nextPutAll: '(self defaultValueOfType: #', myTypeString, ')']