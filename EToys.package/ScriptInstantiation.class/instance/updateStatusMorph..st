status control
updateStatusMorph: statusControlMorph
	"the status control may need to reflect an externally-induced change in status"

	| colorSelector statusReadoutButton |
	statusControlMorph ifNil: [^ self].

	self pausedOrTicking
		ifTrue:
			[statusControlMorph assurePauseTickControlsShow]
		ifFalse:
			[statusControlMorph maybeRemovePauseTickControls].
	statusReadoutButton := statusControlMorph submorphs last.
	colorSelector := ScriptingSystem statusColorSymbolFor: self status.
	statusReadoutButton color: (Color perform: colorSelector) muchLighter.
	statusReadoutButton label: self translatedStatus asString font: Preferences standardButtonFont