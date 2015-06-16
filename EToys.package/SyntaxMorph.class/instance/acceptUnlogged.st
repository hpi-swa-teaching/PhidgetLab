menus
acceptUnlogged
	"This is an exact copy of acceptSilently, except it does not log to the source file.
	Used for all but the last of scrolling number changes."
	| cls |
	self isMethodNode ifFalse:
		[self rootTile == self ifTrue: [^ self].  "not in a script"
		^ self rootTile acceptUnlogged  "always accept at the root"].
	(self ownerThatIsA: ScriptEditorMorph) ifNil: [^ self].
	(cls := self parsedInClass) ifNil: [^ self].
	cls compile: self decompile
		classified: ClassOrganizer default
		withStamp: nil
		notifying: nil
		logSource: false.
