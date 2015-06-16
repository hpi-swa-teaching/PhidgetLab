events
editButtonsScript: evt
	"The user has touched my Scriptor halo-handle.  Bring up a Scriptor on the script of the button."

	| cardsPasteUp cardsPlayer anEditor scriptSelector |

	cardsPasteUp := self pasteUpMorph.
	(cardsPlayer := cardsPasteUp assuredPlayer) assureUniClass.
	scriptSelector := self figureOutScriptSelector.
	scriptSelector ifNil: [
		scriptSelector := cardsPasteUp scriptSelectorToTriggerFor: self.
		anEditor := cardsPlayer newTextualScriptorFor: scriptSelector.
		evt hand attachMorph: anEditor.
		^self
	].

	(cardsPlayer class includesSelector: scriptSelector) ifTrue: [
		anEditor := cardsPlayer scriptEditorFor: scriptSelector.
		evt hand attachMorph: anEditor.
		^self
	].
	"Method somehow got removed; I guess we start aftresh"
	scriptSelector := nil.
	^ self editButtonsScript