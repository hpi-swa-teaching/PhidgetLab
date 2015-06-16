*Etoys-viewer
infoFor: anElement inViewer: aViewer
	"The user made a gesture asking for info/menu relating to me.  Some of the messages dispatched here are not yet available in this image"

	| aMenu elementType |
	elementType := self elementTypeFor: anElement vocabulary: aViewer currentVocabulary.
	((elementType = #systemSlot) | (elementType == #userSlot))
		ifTrue:	[^ self slotInfoButtonHitFor: anElement inViewer: aViewer].
	self flag: #deferred.  "Use a traditional MenuMorph, and reinstate the pacify thing"
	aMenu := MenuMorph new defaultTarget: aViewer.
	#(	('implementors'			browseImplementorsOf:)
		('senders'				browseSendersOf:)
		('versions'				browseVersionsOf:)
		-
		('browse full'			browseMethodFull:)
		('inheritance'			browseMethodInheritance:)
		-
		('about this method'		aboutMethod:)) do:

			[:pair |
				pair = '-'
					ifTrue:
						[aMenu addLine]
					ifFalse:
						[aMenu add: pair first target: aViewer selector: pair second argument: anElement]].
	aMenu addLine.
	aMenu defaultTarget: self.
	#(	('destroy script'		removeScript:)
		('rename script'		renameScript:)
		('pacify script'		pacifyScript:)) do:
			[:pair |
				aMenu add: pair first target: self selector: pair second argument: anElement].

	aMenu addLine.
	aMenu  add: 'show categories....' target: aViewer selector: #showCategoriesFor: argument: anElement.
	aMenu items size = 0 ifTrue:  "won't happen at the moment a/c the above"
		[aMenu add: 'ok' action: nil].  "in case it was a slot -- weird, transitional"

	aMenu addTitle: anElement asString, ' (', elementType, ')'.

	aMenu popUpInWorld: self currentWorld.
 