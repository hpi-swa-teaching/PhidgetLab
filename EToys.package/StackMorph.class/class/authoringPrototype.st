scripting
authoringPrototype
	"Answer an instance of the receiver suitable for placing in a parts bin for authors"
	
	| book |
	book := self new markAsPartsDonor.
	book pageSize: (480 @ 320); color: (Color gray: 0.7).
	book borderWidth: 1; borderColor: Color black.
	book currentPage extent: book pageSize.
	book showPageControls: book fullControlSpecs.
	^ book

"self currentHand attachMorph: StackMorph authoringPrototype"