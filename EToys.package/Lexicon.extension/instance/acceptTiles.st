*Etoys-tiles
acceptTiles
	| pp pq methodNode cls sel |
	"In complete violation of all the rules of pluggable panes, search dependents for my tiles, and tell them to accept."

	pp := self dependents detect: [:pane | pane isKindOf: PluggableTileScriptorMorph] 
			ifNone: [^ Beeper beep].
	pq := pp findA: TransformMorph.
	methodNode := pq findA: SyntaxMorph.
	cls := methodNode parsedInClass.
	sel := cls compile: methodNode decompile classified: self selectedCategoryName
			notifying: nil.
	self noteAcceptanceOfCodeFor: sel.
	self reformulateListNoting: sel.