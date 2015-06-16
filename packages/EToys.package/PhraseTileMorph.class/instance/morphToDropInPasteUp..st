mouse
morphToDropInPasteUp: aPasteUp
	"Answer the morph to drop in aPasteUp, given that the receiver is the putative droppee"

	| actualObject itsSelector aScriptor pos aWatcher op |

	((actualObject := self actualObject) isNil or: [actualObject costume isInWorld not]) ifTrue: [^ self].
	self isCommand ifFalse:  "Can't expand to a scriptor, but maybe launch a watcher..."
		[^ (Preferences dropProducesWatcher
			and: [(#(unknown command) includes: self resultType) not
			and: [(op := self operatorTile operatorOrExpression) notNil
			and: [op numArgs = 0
			and: [(Vocabulary gettersForbiddenFromWatchers includes: op) not]]]])
			ifTrue:
				[aWatcher := WatcherWrapper new fancyForPlayer: self associatedPlayer getter: op.
				aWatcher position: self position]
			ifFalse:
				[self]].

	self justGrabbedFromViewer ifFalse: [^ self].
	actualObject assureUniClass.
	itsSelector := self userScriptSelector.
	pos := self position.
	aScriptor := itsSelector isEmptyOrNil
		ifFalse:
			[actualObject scriptEditorFor: itsSelector]
		ifTrue:
			["It's a system-defined selector; construct an anonymous scriptor around it"
			actualObject newScriptorAround: self].
	aScriptor ifNil:[^self].
	(self hasOwner: aScriptor) ifTrue:[
		aScriptor fullBounds. "force layout"
		aScriptor position: pos - self position.
	] ifFalse:[
		aScriptor position: self position.
	].
	^ aScriptor