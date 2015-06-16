card data
allStringsAfter: aText 
	"return an OrderedCollection of strings of text in my instance vars.  If aText is non-nil, begin with that object."

	| list ok |
	list := OrderedCollection new.
	ok := aText isNil.
	self class variableDocks do: 
			[:vdock | | instVarValue string | 
			instVarValue := self perform: vdock playerGetSelector.
			ok ifFalse: [ok := instVarValue == aText].	"and do this one too"
			ok 
				ifTrue: 
					[string := nil.
					instVarValue isString ifTrue: [string := instVarValue].
					instVarValue isText ifTrue: [string := instVarValue string].
					instVarValue isNumber ifTrue: [string := instVarValue printString].
					instVarValue isMorph ifTrue: [string := instVarValue userString].	"not used"
					string ifNotNil: 
							[string isString ifTrue: [list add: string] ifFalse: [list addAll: string]]]].
	privateMorphs 
		ifNotNil: [privateMorphs do: [:mm | list addAll: (mm allStringsAfter: nil)]].
	^list