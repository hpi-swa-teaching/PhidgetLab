playerList
reinvigorateAllScriptsTool: anAllScriptsTool 
	"Rebuild the contents of an All Scripts tool"

	| showingOnlyActiveScripts candidateList firstTwo oldList allExtantPlayers newList morphList |
	showingOnlyActiveScripts := anAllScriptsTool showingOnlyActiveScripts.
	self flushPlayerListCache.
	"needed? Probably to pick up on programmatical script-status control only"

	firstTwo := {anAllScriptsTool submorphs first.  anAllScriptsTool submorphs second}.
	oldList := (anAllScriptsTool submorphs copyFrom: 3 to: anAllScriptsTool submorphs size) collect:
		[:aRow |
			(aRow findA: UpdatingSimpleButtonMorph) target].

	allExtantPlayers := self allExtantPlayers.
	anAllScriptsTool showingAllInstances "take all instances of all classes"
		ifTrue:
			[candidateList := allExtantPlayers]  

		ifFalse:  "include only one exemplar per uniclass.  Try to get one that has some qualifying scripts"
			[candidateList := Set new.
			allExtantPlayers do:
				[:aPlayer |
					(candidateList noneSatisfy: [:plyr | plyr isMemberOf: aPlayer class]) ifTrue:
						[aPlayer instantiatedUserScriptsDo: [:aScriptInstantiation |
							(showingOnlyActiveScripts not or: [aScriptInstantiation pausedOrTicking]) 								ifTrue:
									[candidateList add: aPlayer]]]]].
	newList := OrderedCollection new.
	candidateList do:
		[:aPlayer | aPlayer instantiatedUserScriptsDo:
			[:aScriptInstantiation |
				(showingOnlyActiveScripts not or: [aScriptInstantiation pausedOrTicking]) ifTrue:
					[newList add: aScriptInstantiation]]].

	oldList asSet = newList asSet
		ifFalse:
			[anAllScriptsTool removeAllMorphs; addAllMorphs: firstTwo.
			morphList := newList collect:
				[:aScriptInstantiation |  aScriptInstantiation statusControlRowIn: anAllScriptsTool].
			anAllScriptsTool addAllMorphs: morphList.
			newList do:
				[:aScriptInstantiation | aScriptInstantiation updateAllStatusMorphs]]