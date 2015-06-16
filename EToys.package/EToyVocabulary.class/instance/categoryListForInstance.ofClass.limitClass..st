category list
categoryListForInstance: anObject ofClass: aClass limitClass: mostGenericClass
	"Answer the category list for the given object, considering only code implemented in aClass and lower"

	^ (anObject isPlayerLike)
		ifTrue:
			[self flag: #deferred.  "The bit commented out on next line is desirable but not yet workable, because it delivers categories that are not relevant to the costume in question"
			"#(scripts #'instance variables'), (super categoryListForInstance: anObject ofClass: aClass limitClass: mostGenericClass)]"

			self translatedWordingsFor: ((mostGenericClass == aClass)
				ifFalse:
					[anObject categoriesForVocabulary: self]
				ifTrue:
					[{ScriptingSystem nameForScriptsCategory.  ScriptingSystem nameForInstanceVariablesCategory}])]
		ifFalse:
			[super categoryListForInstance: anObject ofClass: aClass limitClass: mostGenericClass]