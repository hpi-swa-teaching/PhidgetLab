selection
setSelection: newSpec 
	"A selectionSpec is {Inner morph.  Where clicked.  Outer morph}.
	First mouseDown starts a selection (with outerMorph isNil).
	Dragging more than 4 pixels means to grab a copy of the current outer selection.
		The current selection is the outerMorph, or the inner if it is nil.
	Each mouseUp extends the selection to the next outer morph that is selectable.
		Except if this is the first click."

	| rootTile |
	(rootTile := self rootTile) valueOfProperty: #selectionSpec
		ifPresentDo: [:oldSpec | oldSpec third ifNotNil: [:m | m deselect]].
	(newSpec isNil or: [newSpec third isNil and: [self isMethodNode]]) 
		ifTrue: 
			[self deselect.
			^rootTile removeProperty: #selectionSpec].

	"Select outer morph of the new selection"
	newSpec third isNil 
		ifTrue: [self select	"first click down"]
		ifFalse: [newSpec third select	"subsequent clicks"].
	rootTile setProperty: #selectionSpec toValue: newSpec