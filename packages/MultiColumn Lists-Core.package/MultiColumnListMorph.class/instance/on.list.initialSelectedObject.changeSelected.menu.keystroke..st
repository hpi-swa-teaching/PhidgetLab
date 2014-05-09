initialization
on: anObject list: theList initialSelectedObject: initialSelectedObject changeSelected: setSelectionSel menu: getMenuSel keystroke: keyActionSel 
	self model: anObject.
	self setSetIndexSelector: setSelectionSel.
	filter _ OrderedCollection new.
	getMenuSelector _ getMenuSel.
	keystrokeActionSelector _ keyActionSel.
	autoDeselect _ true.
	self borderWidth: 1.
	self list: theList.
	self selection: initialSelectedObject.
	self initForKeystrokes

