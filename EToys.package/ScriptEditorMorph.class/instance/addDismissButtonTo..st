buttons
addDismissButtonTo: aRowMorph
	"Add the brown dismiss button to the header"

	| aButton |
	aButton := self tanOButton.
	aRowMorph addMorphBack: aButton.
	aButton actionSelector: #dismiss;
			setBalloonText: 
'Remove this script
from the screen
(you can open it
again from a Viewer)' translated.
	^ aRowMorph