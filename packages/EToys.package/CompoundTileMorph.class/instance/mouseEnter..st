event handling
mouseEnter: evt
	"Resume drop-tracking in enclosing editor"
	| ed |
	(ed := self enclosingEditor) ifNotNil:
		[ed mouseLeave: evt]