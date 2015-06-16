script editor
releaseCachedState
	"release all non-showing scriptors.  What do we do about versions????"

	self isTextuallyCoded ifTrue: [formerScriptEditors := OrderedCollection new].
		"to test new tiles.  We 'commit' to current script."
	currentScriptEditor ifNil: [^ self].
	true ifTrue: [^ self].	"<<< to test the reconstruction of scripts, change to false"
	currentScriptEditor world ifNil: ["not showing"
		currentScriptEditor := nil].

