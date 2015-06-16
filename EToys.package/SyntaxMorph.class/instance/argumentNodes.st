accessing
argumentNodes
	"Return a collection of this message's argument nodes.  "

	| cls coll rec |
	parseNode ifNil: [^ #()].
	cls := parseNode class.
	cls == SelectorNode ifTrue: [^ #()].
	cls == KeyWordNode ifTrue: [^ #()].

	coll := OrderedCollection new.
	rec := self receiverNode.
	submorphs do: [:sub | 
		(sub isSyntaxMorph and: [sub ~~ rec]) ifTrue: [
			sub isNoun ifTrue: [coll addLast: sub]	"complete arg"
				ifFalse: [coll := coll, sub argumentNodes]]].	"MessagePartNode, MessageNode with no receiver"
	^ coll