instance creation
buildPanel
	"self buildPanel openInHand"
	| launcher panel |
	launcher := self new.
	launcher buildPane.
	panel := ScriptingSystem buildPanelTitled: 'Recent Etoy Projects'.
	panel addMorphBack: launcher.
	launcher window: panel.
	^ panel