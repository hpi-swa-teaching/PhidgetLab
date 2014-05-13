drawing
drawOn: aCanvas
	"Draw the list on the canvas, and possibly also draw frame feedback"

	| bnd |

	(header notNil and: [header scrolls not]) ifTrue: [
		bnd := header bounds right: self rawInnerBounds right.
		header bounds: bnd
	].
	super drawOn: aCanvas.
	
	self hasFocus ifTrue:
		[aCanvas frameRectangle: scroller bounds color: Preferences keyboardFocusColor]
