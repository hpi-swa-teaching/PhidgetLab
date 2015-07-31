*Phidget-EToys
likelyCategoryToShow
	"Choose a category to show based on what's already showing and on some predefined heuristics"

	| possible all currVocab |
	all := (scriptedPlayer categoriesForViewer: self) asOrderedCollection.
	possible := all copy.

	currVocab := self currentVocabulary.
	self categoryMorphs do: 
			[:m | 
			| aCat |
			aCat := currVocab categoryWhoseTranslatedWordingIs: m currentCategory.
			aCat ifNotNil: [possible remove: aCat wording ifAbsent: []]].

	(possible includes: ScriptingSystem nameForInstanceVariablesCategory translated) ifTrue:
		[^ ScriptingSystem nameForInstanceVariablesCategory].

	(currVocab isEToyVocabulary) 
		ifTrue: 
			[(possible includes: ScriptingSystem nameForScriptsCategory translated) 
				ifTrue: [^ ScriptingSystem nameForScriptsCategory]].
	{'kedama' translated. 'phidgetport' translated. #basic translated} 
		do: [:preferred | (possible includes: preferred) ifTrue: [^ preferred]].
	((scriptedPlayer isPlayerLike) 
		and: [scriptedPlayer hasOnlySketchCostumes]) 
			ifTrue: [(possible includes: #tests translated) ifTrue: [^#tests translated]].
	{#'color & border' translated. #tests translated. #color translated. #flagging translated. #comparing translated.} 
		do: [:preferred | (possible includes: preferred) ifTrue: [^ preferred]].
	^ possible isEmpty ifFalse: [possible first] ifTrue: [all first]