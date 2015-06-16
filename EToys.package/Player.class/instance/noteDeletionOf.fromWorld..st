customevents-misc
noteDeletionOf: aMorph fromWorld: aWorld
	"aMorph, while pointing to me as its costumee, has been deleted"
	"This may be too aggressive because deletion of a morph may not really mean deletion of its associated player -- in light of hoped-for multiple viewing"

	| viewers scriptors viewerFlaps |
	viewers := OrderedCollection new.
	viewerFlaps := OrderedCollection new.
	scriptors := OrderedCollection new.
	aWorld allMorphs do:
		[:m | m isAViewer ifTrue: [viewers add: m].
			((m isKindOf: ViewerFlapTab) and: [m scriptedPlayer == self])
				ifTrue:
					[viewerFlaps add: m].
			((m isKindOf: ScriptEditorMorph) and: [m myMorph == aMorph])
				ifTrue: [scriptors add: m]].

	aMorph  removeAllEventTriggersFor: self.
	aWorld removeAllEventTriggersFor: self.
	viewers do: [:v |  v noteDeletionOf: aMorph].
	viewerFlaps do: [:v  | v dismissViaHalo].
	scriptors do: [:s | s privateDelete] 