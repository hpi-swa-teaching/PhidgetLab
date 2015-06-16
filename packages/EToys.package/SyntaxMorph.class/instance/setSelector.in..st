pop ups
setSelector: stringLike in: stringMorph
	"Store the new selector and accept method."

	| aSymbol myType str |
	aSymbol := stringLike asSymbol.
	(ScriptingSystem helpStringOrNilFor: aSymbol) ifNotNil:
		[:aString |
			self setBalloonText: aString translated].
	myType := stringMorph valueOfProperty: #syntacticReformatting ifAbsent: [#none].
	str := aSymbol.
	(self isStandardSetterKeyword: str) ifTrue: [str := self translateToWordySetter: str].
	(self isStandardGetterSelector: str) ifTrue: [str := self translateToWordyGetter: str].
	(self shouldBeBrokenIntoWords: myType) 
		ifTrue: [str := self substituteKeywordFor: str].
	stringMorph contents: str.
	"parseNode key: aSymbol code: nil."
	str = stringLike ifFalse:
		[stringMorph setProperty: #syntacticallyCorrectContents toValue: aSymbol].
	self acceptSilently