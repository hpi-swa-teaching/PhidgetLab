scripts-standard
loadSound: soundName

	| snd |
	snd := SoundService default soundNamed: soundName.
	snd ifNotNil: [self sendMessageToCostume: #loadSound: with: snd].
