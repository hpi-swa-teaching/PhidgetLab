submorphs-accessing
insertionIndexForPaneOfType: aType
	| naturalIndex insertionIndex |
	naturalIndex := self naturalPaneOrder indexOf: aType.
	insertionIndex := 1.
	(self naturalPaneOrder copyFrom: 1 to: (naturalIndex - 1)) do: "guys that would precede"
		[:sym | (self hasSubmorphWithProperty: sym)
			ifTrue:
				[insertionIndex := insertionIndex + 1]].
	^ insertionIndex