access
printOn: aStream
	^ aStream nextPutAll: 'ScriptEditor for #', scriptName asString, ' player: ', playerScripted externalName