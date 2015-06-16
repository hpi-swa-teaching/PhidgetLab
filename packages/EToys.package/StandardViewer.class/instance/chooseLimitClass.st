categories
chooseLimitClass
	"Put up a menu allowing the user to choose the most generic class to show"

	| aMenu limitClass |
	aMenu := MenuMorph new defaultTarget: self.
	limitClass := self limitClass.
	scriptedPlayer class withAllSuperclasses do:
		[:aClass | 
			aClass == ProtoObject
				ifTrue:
					[aMenu addLine].
			aMenu add: aClass name selector: #setLimitClass: argument: aClass.
			aClass == limitClass ifTrue:
				[aMenu lastItem color: Color red].
			aClass == limitClass ifTrue: [aMenu addLine]].
	aMenu addTitle: 'Show only methods
implemented at or above...'.  "heh heh -- somebody please find nice wording here!"
	aMenu popUpInWorld: self currentWorld