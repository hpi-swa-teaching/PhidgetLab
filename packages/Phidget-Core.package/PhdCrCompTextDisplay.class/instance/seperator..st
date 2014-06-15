scrolling
seperator: aString

	(1 to: self rows) do: [:i |
		self resetScrollPositionAt: i].
	seperator := aString asString.