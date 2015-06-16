*Etoys-queries
instanceWhoRespondsTo: aSelector 
	"Find the most likely class that responds to aSelector. Return an instance 
	of it. Look in vocabularies to match the selector."
	"Most eToy selectors are for Players"
	| mthRefs |
	((self vocabularyNamed: #eToy)
			includesSelector: aSelector)
		ifTrue: [aSelector == #+
				ifFalse: [^ Player new costume: Morph new]].
	"Numbers are a problem"
	((self vocabularyNamed: #Number)
			includesSelector: aSelector)
		ifTrue: [^ 1].
	"Is a Float any different?"
	"String Point Time Date"
	#()
		do: [:nn | ((self vocabularyNamed: nn)
					includesSelector: aSelector)
				ifTrue: ["Ask Scott how to get a prototypical instance"
					^ (Smalltalk at: nn) new]].
	mthRefs := self systemNavigation allImplementorsOf: aSelector.
	"every one who implements the selector"
	mthRefs
		sortBlock: [:a :b | (Smalltalk at: a classSymbol) allSuperclasses size < (Smalltalk at: b classSymbol) allSuperclasses size].
	mthRefs size > 0
		ifTrue: [^ (Smalltalk at: mthRefs first classSymbol) new].
	^ Error new