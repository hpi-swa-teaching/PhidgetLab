menu
getAllText
	"Collect the text for each card.  Just point at strings so don't have to recopy them.  (Parallel array of urls for ID of cards.  Remote cards not working yet.)
	allText = Array (cards size) of arrays (fields in it) of strings of text.
	allTextUrls = Array (cards size) of urls or card numbers."

	| oldUrls oldStringLists allText allTextUrls |
	self writeSingletonData.
	oldUrls := self valueOfProperty: #allTextUrls ifAbsent: [#()].
	oldStringLists := self valueOfProperty: #allText ifAbsent: [#()].
	allText := self privateCards collect: [:pg | OrderedCollection new].
	allTextUrls := Array new: self privateCards size.
	self privateCards doWithIndex: [:aCard :ind | | aUrl which |
		aUrl := aCard url.  aCard isInMemory 
			ifTrue: [(allText at: ind) addAll: (aCard allStringsAfter: nil).
				aUrl ifNil: [aUrl := ind].
				allTextUrls at: ind put: aUrl]
			ifFalse: ["Order of cards on server may be different.  (later keep up to date?)"
				"*** bug in this algorithm if delete a page?"
				which := oldUrls indexOf: aUrl.
				allTextUrls at: ind put: aUrl.
				which = 0 ifFalse: [allText at: ind put: (oldStringLists at: which)]]].
	self setProperty: #allText toValue: allText.
	self setProperty: #allTextUrls toValue: allTextUrls.
	^ allText