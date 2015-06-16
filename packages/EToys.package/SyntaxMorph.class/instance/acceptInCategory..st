menus
acceptInCategory: categoryString
	"Turn my current state into the text of a method.  Compile it in my class."
	| cls sc sel |
	self isMethodNode ifFalse: [
		self rootTile == self ifTrue: [^ self].  "not in a script"
		^ self rootTile accept  "always accept at the root"].
	(cls := self parsedInClass) ifNil: [^ self].
	sel := cls compile: self decompile classified: categoryString.
	(sc := self firstOwnerSuchThat: [:mm | mm class == ScriptEditorMorph]) 
		ifNotNil: [sc hibernate; unhibernate].	"rebuild the tiles"
	^ sel