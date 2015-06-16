commands
newPermanentScript
	"Create a new, empty script and attach it to the hand"

	| aMorph |
	self scriptedPlayer assureUniClass.
	aMorph := ImageMorph new image: (ScriptingSystem formAtKey: 'newScript').
	aMorph setProperty: #newPermanentScript toValue: true.
	aMorph setProperty: #newPermanentPlayer toValue: self scriptedPlayer.
	self primaryHand attachMorph: aMorph