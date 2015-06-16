initialization
initializeFor: ignored
	"Initialize the receiver as a tool which shows, and allows the user to change the status of, all the instantiations of all the user-written scripts in the scope of the containing pasteup's presenter"

	| aRow aButton |
	showingOnlyActiveScripts := true.
	showingAllInstances := true.
	showingOnlyTopControls := true.
	self color: Color brown muchLighter muchLighter; wrapCentering: #center; cellPositioning: #topCenter; vResizing: #shrinkWrap; hResizing: #shrinkWrap.
	self useRoundedCorners.
	self borderWidth: 4; borderColor: Color brown darker.
	aRow := AlignmentMorph newRow.
	aRow listCentering: #justified; color: Color transparent.
	aButton := self tanOButton.
	aButton actionSelector: #delete.
	aRow addMorphFront: aButton.
	aRow addMorphBack: ScriptingSystem scriptControlButtons.
	aRow addMorphBack: self openUpButton.
	self addMorphFront: aRow.

