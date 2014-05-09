scrolling
scrollBarValue: scrollValue
	|newBounds|

	super scrollBarValue: scrollValue.
	newBounds := (0@0 corner: bounds extent) translateBy: (0 @ (scroller offset y)).
	list do: [:m | m displayBounds: newBounds].
