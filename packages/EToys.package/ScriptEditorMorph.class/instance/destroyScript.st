buttons
destroyScript
	"At user request, and only after confirmation, destroy the script, thus removing it from the uniclass's method dictionary and removing its instantiations from all instances of uniclass, etc."

	(self confirm: 'Caution -- this destroys this script
permanently; are you sure you want to do this?' translated) ifFalse: [^ self].
	true ifTrue: [^ playerScripted removeScript: scriptName fromWorld: self world].

	self flag: #deferred.  "revisit"
	(playerScripted okayToDestroyScriptNamed: scriptName)
		ifFalse:
			[^ self inform: 'Sorry, this script is being called
from another script.' translated].

	self actuallyDestroyScript