scrolling
scrolling: aBoolean
	"Sets the given scrolling value to alle rows if necessary."
	
	(1 to: self rows) do: [:i |
		self scrolling: aBoolean inRow: i ].
	