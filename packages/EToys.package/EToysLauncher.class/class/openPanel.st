instance creation
openPanel
	"self openPanel"
	| window |
	window := self buildPanel.
	window openCenteredInWorld.
	^ window