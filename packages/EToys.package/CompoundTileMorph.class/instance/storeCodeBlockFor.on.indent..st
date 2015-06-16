code generation
storeCodeBlockFor: scriptPart on: aStream indent: tabCount

	| rows r |
	rows := scriptPart tileRows.
	1 to: rows size do: [:i |
		tabCount timesRepeat: [aStream tab].
		r := rows at: i.
		r do: [:t | t storeCodeOn: aStream indent: tabCount].
		i < rows size ifTrue: [aStream nextPut: $.; cr]].
