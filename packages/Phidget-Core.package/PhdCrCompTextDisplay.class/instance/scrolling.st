scrolling
scrolling
	"Returns wether all rows are scrolling or not."
	
	| scrolling |
	scrolling := true.
	(1 to: self rows) do: [:i |
		scrolling := (self isRowScrolling: i) and: [scrolling] ].
	^ scrolling
	