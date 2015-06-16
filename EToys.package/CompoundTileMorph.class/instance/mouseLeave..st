event handling
mouseLeave: evt
	"Resume drop-tracking in enclosing editor"
	| ed |
	(ed := self enclosingEditor) ifNotNil:
		[ed mouseEnter: evt]