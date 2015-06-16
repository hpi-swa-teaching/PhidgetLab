printing
getHeader: strm
	| se |
	"We are in an EToy scriptor and the method header line has been removed.  Try to recover the method name.  Fail if method has args (deal with this later)."

	(se := self ownerThatIsA: ScriptEditorMorph) ifNotNil: [
		se scriptName numArgs > 0 ifTrue: [^ false].	"abort"
		strm nextPutAll: se scriptName].
	^ true