misc
allOpenViewers
	"Answer a list of all the viewers open on the receiver.  Include viewers in closed flaps"

	| aWorld all |
	(aWorld := self costume world) ifNil: [^#()].
	all := aWorld allMorphs.
	aWorld closedViewerFlapTabs 
		do: [:aTab | all addAll: aTab referent allMorphs].
	^all 
		select: [:m | (m isStandardViewer) and: [m scriptedPlayer == self]]