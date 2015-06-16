versions
saveScriptVersion: timeStampCurrentlyIgnored 
	self isTextuallyCoded 
		ifFalse: 
			[formerScriptEditors isNil 
				ifTrue: [formerScriptEditors := OrderedCollection new].
			currentScriptEditor 
				ifNotNil: [formerScriptEditors add: currentScriptEditor veryDeepCopy].
			formerScriptEditors size > 100 
				ifTrue: [^self error: 'apparent runaway versions']]