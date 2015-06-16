instance creation
buildGallery
	"self buildGallery openInHand"
	| launcher panel |
	launcher := self new.
	launcher showGallery: true.
	launcher buildPane.
	panel := ScriptingSystem buildPanelTitled: 'Projects'.
	panel addMorphBack: launcher.
	launcher window: panel.
	^ panel