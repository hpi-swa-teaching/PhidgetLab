misc
allOpenViewersOnReceiverAndSiblings
	"Answer a list of all the viewers open on the receiver and any of its sibling instances.  Include viewers in closed flaps"

	| aWorld all |
	(aWorld := self costume world) ifNil: [^#()].
	all := aWorld allMorphs.
	aWorld closedViewerFlapTabs 
		do: [:aTab | all addAll: aTab referent allMorphs].
	^all select: 
			[:m | 
			(m isStandardViewer) and: [m scriptedPlayer class == self class]]