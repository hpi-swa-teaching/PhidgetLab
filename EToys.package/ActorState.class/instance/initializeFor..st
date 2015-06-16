initialization
initializeFor: aPlayer
	| aNewDictionary |
	owningPlayer := aPlayer.
	instantiatedUserScriptsDictionary ifNil: [^ self].
	aNewDictionary := IdentityDictionary new.
	instantiatedUserScriptsDictionary associationsDo: 
		[:assoc |
			aNewDictionary at: assoc key put: (assoc value shallowCopy player: aPlayer)].
	instantiatedUserScriptsDictionary := aNewDictionary.