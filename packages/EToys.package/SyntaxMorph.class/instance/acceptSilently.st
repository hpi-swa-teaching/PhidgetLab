menus
acceptSilently
	"Turn my current state into the text of a method.
	Compile it in my class.  Don't rebuild the tiles."
	| cls |
	self isMethodNode ifFalse: [
		self rootTile == self ifTrue: [^ false].  "not in a script"
		^ self rootTile acceptSilently  "always accept at the root"].
	(self ownerThatIsA: ScriptEditorMorph) ifNil: [^ false].
	(cls := self parsedInClass) ifNil: [^ false].
	cls compile: self decompile classified: 'scripts'.
	^ true