initialization
initializeWith: aCardMorph
	"Install the card inside a new stack.  Make no border or controls, so I the card's look is unchanged.  Card already has a CardPlayer."
	
	| wld |
	wld := aCardMorph world.
	self initialize.
	self pageSize: aCardMorph extent.
	self borderWidth: 0; layoutInset: 0; color: Color transparent.
	pages := Array with: aCardMorph.
	currentPage := aCardMorph.
	self privateCards: (OrderedCollection with: currentPage currentDataInstance).
	currentPage beAStackBackground.
	self position: aCardMorph position.
	submorphs last delete.
	self addMorph: currentPage.	
	self showPageControls: self fullControlSpecs.
	wld addMorph: self.
