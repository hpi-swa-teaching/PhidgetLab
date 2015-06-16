buttons
addDestroyButtonTo: aRowMorph 
	"Add the destroiy button at the end of the header provided"

	| aButton |
	aButton := self pinkXButton.
	aRowMorph addMorphBack: aButton.
	aButton actionSelector: #destroyScript;
			 setBalloonText: 'Destroy this script
(CAUTION!!)' translated.
	^ aRowMorph