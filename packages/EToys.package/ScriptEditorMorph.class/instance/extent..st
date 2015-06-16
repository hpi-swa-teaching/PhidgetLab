other
extent: x

	| newExtent tw menu |
	newExtent := x max: self minWidth @ self minHeight.
	(tw := self findA: TwoWayScrollPane) ifNil:
		["This was the old behavior"
		^ super extent: newExtent].

	(self hasProperty: #autoFitContents) ifTrue: [
		menu := MenuMorph new defaultTarget: self.
		menu addUpdating: #autoFitString target: self action: #autoFitOnOff.
		menu addTitle: 'To resize the script, uncheck the box below' translated.
		menu popUpEvent: nil in: self world	.
		^ self].

	"Allow the user to resize to any size"
	tw extent: ((newExtent x max: self firstSubmorph width)
				@ (newExtent y - self firstSubmorph height)) - (borderWidth * 2) + (-4 @ -4).  "inset?"
	^ super extent: newExtent