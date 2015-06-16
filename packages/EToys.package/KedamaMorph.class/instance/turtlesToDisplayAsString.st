drawing
turtlesToDisplayAsString

	^ String streamContents: [:strm |
		strm nextPutAll: '#('.
		turtlesToDisplay do: [:p |
			strm nextPutAll: p externalName.
			strm nextPut: Character space.
		].
		strm nextPutAll: ')'.
	].
