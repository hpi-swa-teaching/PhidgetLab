initialize-release
releaseCachedState
	"release all non-showing scriptors.  What do we do about versions????"
	"18 May 2001 - get more aggressive in dropping stuff"

	formerScriptingTiles := OrderedCollection new.

	currentScriptEditor ifNil: [^ self].

	true ifTrue: [^ self].	"<<< to test the reconstruction of scripts, change to false"
	currentScriptEditor world ifNil: ["not showing"
		currentScriptEditor := nil]