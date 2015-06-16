as yet unclassified
rebuildOptionalButtons

	| answer |

	answer := #() .
	
	myTarget isTextMorph ifTrue: [
		answer := answer, {
			self 
				buttonNamed: 'Text' translated action: #doTextProperties color: color lighter 
				help: 'open a text properties panel for the morph' translated.
		}.
	].
	^answer