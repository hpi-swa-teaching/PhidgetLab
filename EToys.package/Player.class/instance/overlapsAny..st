scripts-standard
overlapsAny: aPlayer 
	"Answer true if my costume overlaps that of aPlayer, or any of its  
	siblings (if aPlayer is a scripted player)  
	or if my costume overlaps any morphs of the same class (if aPlayer is  
	unscripted)."
	| possibleCostumes itsCostumeClass myShadow |
	(self ~= aPlayer
			and: [self overlaps: aPlayer])
		ifTrue: [^ true].
	possibleCostumes := IdentitySet new.
	aPlayer belongsToUniClass
		ifTrue: [aPlayer class
				allSubInstancesDo: [:anInstance | | itsCostume |
					(anInstance ~~ aPlayer
							and: [itsCostume := anInstance costume.
								(itsCostume bounds intersects: costume bounds)
									and: [itsCostume world == costume world]])
						ifTrue: [possibleCostumes add: itsCostume]]]
		ifFalse: [itsCostumeClass := aPlayer costume class.
			self costume world presenter allExtantPlayers
				do: [:ep | ep costume
						ifNotNil: [:ea | (ea class == itsCostumeClass
									and: [ea bounds intersects: costume bounds])
								ifTrue: [possibleCostumes add: ea]]]].
	possibleCostumes isEmpty
		ifTrue: [^ false].
	myShadow := costume shadowForm.
	^ possibleCostumes
		anySatisfy: [:m | m overlapsShadowForm: myShadow bounds: costume fullBounds]