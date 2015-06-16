tiles from method
selectorTile: msgNode in: aScriptor
	| sel selTile |
	"Make a selector (operator) tile"

	sel := msgNode selector key.
	sel == #color:sees: ifTrue: [
		selTile := (Viewer new) colorSeesPhrase submorphs second.	"ColorSeer tile"
		selTile colorSwatchColor: msgNode arguments first eval.
		^ selTile].
	^ self setOperator: sel