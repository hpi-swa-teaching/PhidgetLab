entries
wantsRowMenuFor: aSymbol
	"Answer whether a viewer row for the given symbol should have a menu button on it"

	| elementType |

	true ifTrue: [^ true].  "To allow show categories item.  So someday this method can be removed, and its sender can stop sending it..."

	elementType := scriptedPlayer elementTypeFor: aSymbol vocabulary: self currentVocabulary.
	(elementType == #systemScript) ifTrue: [^ false].
	((elementType == #systemSlot) and:
		[#(color:sees: touchesA: overlaps: overlapsAny:) includes: aSymbol]) ifTrue: [^ false].
	^ true