scrolling
vScrollBarValue: scrollValue
	|newBounds|

	super vScrollBarValue: scrollValue.
	newBounds := (0@0 corner: bounds extent) translateBy: (0 @ (scroller offset y)).
	currentTop to: (((bounds extent y // (scroller layoutPolicy height)) + 1) min: list size) do: [:i| (list at: i) displayBounds: newBounds].
	currentTop := (scroller offset y // (scroller layoutPolicy height)) max: 1.
	currentTop to: ((((scroller offset y + bounds extent y) // (scroller layoutPolicy height)) + 1) min: list size) do: [:i| (list at: i) displayBounds: newBounds].