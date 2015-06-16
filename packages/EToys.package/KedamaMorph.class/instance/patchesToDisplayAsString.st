drawing
patchesToDisplayAsString

	^ String streamContents: [:strm |
		strm nextPutAll: '#('.
		patchesToDisplay do: [:p |
			strm nextPutAll: p externalName.
			strm nextPut: Character space.
		].
		strm nextPutAll: ')'.
	].
