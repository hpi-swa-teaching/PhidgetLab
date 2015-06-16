scripts
userScriptForPlayer: aPlayer selector: aSelector
	"Answer the user script for the player (one copy for all instances of the uniclass) and selector"

	|  newEntry existingEntry |
	scripts ifNil: [scripts := IdentityDictionary new].
	existingEntry := scripts at: aSelector ifAbsent: [nil].

	"Sorry for all the distasteful isKindOf: and isMemberOf: stuff here, folks; it arises out of concern for preexisting content saved on disk from earlier stages of this architecture.  Someday much of it could be cut loose"
	Preferences universalTiles
		ifTrue:
			[(existingEntry isMemberOf: MethodWithInterface) ifTrue: [^ existingEntry].
			newEntry := (existingEntry isKindOf: UniclassScript)
				ifTrue:
					[existingEntry as: MethodWithInterface] "let go of extra stuff if it was UniclassScript"
				ifFalse:
					[MethodWithInterface new playerClass: aPlayer class selector: aSelector].
			scripts at: aSelector put: newEntry.
			^ newEntry]
		ifFalse:
			[(existingEntry isKindOf: UniclassScript)
				ifTrue:
					[^ existingEntry]
				ifFalse:
					[newEntry := UniclassScript new playerClass: self selector: aSelector.
					scripts at: aSelector put: newEntry.
					existingEntry ifNotNil: "means it is a grandfathered UserScript that needs conversion"
						[newEntry convertFromUserScript: existingEntry].
					^ newEntry]]