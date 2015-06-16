misc
offerShiftedMenuIn: aStatusViewer
	"Put up the shifted menu"

	| aMenu |
	aMenu := MenuMorph new defaultTarget: self.
	aMenu title: player knownName, ' ', selector.
	aMenu add: 'grab this object' translated target: player selector: #grabPlayerIn: argument: self currentWorld.
	aMenu balloonTextForLastItem: 'Wherever this object currently is, the "grab" command will rip it out, and place it in your "hand".  This is a very drastic step, that can disassemble things that may be very hard to put back together!' translated.
	aMenu add: 'destroy this script' translated target: player selector: #removeScriptWithSelector: argument: selector.
	aMenu balloonTextForLastItem: 'Caution!  This is irreversibly destructive -- it removes the script from the system.' translated.
	aMenu addLine.
	aMenu add: 'inspect morph' translated target: player costume selector: #inspect.
	aMenu add: 'inspect player' translated target: player selector: #inspect.
	aMenu popUpInWorld: ActiveWorld