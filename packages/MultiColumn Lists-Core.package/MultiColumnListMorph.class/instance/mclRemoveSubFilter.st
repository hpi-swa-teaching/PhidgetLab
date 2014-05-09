menu
mclRemoveSubFilter
	| columns oldFilter aMenu idx options sel |
	
	specifications ifNotNil: ["Let the specs deal with filtering"
		(specifications reRemoveSubFilterDisplayQuery) ifTrue: [ "True means we changed the filter; false means nothing changed"
			sel := specifications originalObjectFor: selection value.
			self list: origObjects.
			self selection: sel]. 
		^self.
		].
	filter size < 2 ifTrue: [^self].
	columns := header isNil ifFalse: [header strings] ifTrue: [Array streamContents: [:array| 1 to: list first size do: [:x| array nextPut: ('Column ', x asString)]]].
	options := filter collect: [:a| columns at: a first].
	aMenu := SelectionMenu 
		labelList: options
		selections: options.
	oldFilter := aMenu startUpWithCaption: 'Choose column to remove filter from'.
	oldFilter ifNil: [^self].
	idx := columns indexOf: oldFilter.
	filter := filter reject: [:a| a first = idx].
	self list: origObjects