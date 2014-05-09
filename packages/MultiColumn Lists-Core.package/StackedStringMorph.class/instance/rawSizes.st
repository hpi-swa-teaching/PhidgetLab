accessing
rawSizes
	"Figure out the minimum size the strings should be"
	|fontSizer |

	(rawSizes isNil or: [rawSizes size ~= self shownStrings size]) ifTrue: [
		fontSizer := CharacterScanner new initializeStringMeasurer.
		rawSizes := Array streamContents: [:szs|
			self shownStrings do: [:str| szs nextPut: 50].
			].
		].
	^rawSizes