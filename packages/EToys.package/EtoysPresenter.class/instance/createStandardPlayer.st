standardPlayer etc
createStandardPlayer
	| aMorph |

	aMorph := ImageMorph new image: (ScriptingSystem formAtKey: 'standardPlayer').
	associatedMorph addMorphFront: aMorph.
	(standardPlayer := aMorph assuredPlayer) renameTo: 'dot' translated.
	aMorph setBalloonText: '...'.
	self positionStandardPlayer.
	^ standardPlayer