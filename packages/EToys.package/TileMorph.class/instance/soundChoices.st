misc
soundChoices
	"Answer a list of sound choices.  This applies only to tiles that have sound-names as their literals, viz. SoundTiles and SoundReadoutTiles."

	| aList |
	aList := SoundService default sampledSoundChoices asOrderedCollection.
	aList removeAllFoundIn: (ScriptingSystem soundNamesToSuppress copyWithout: literal).
	^ aList asSortedArray