slot-kedama
createSlotForPatch: aPatchMorph
	"anEmbeddedMorph has just been added to my costume because of explicit user action.  
	Create an instance variable and accessors for it as a Player-valued slot."
	| itsName openViewers |
	self costume isInWorld ifFalse: [ ^self ].

	itsName := aPatchMorph externalName asSymbol.

	self slotInfo
		at: itsName
		put: (SlotInformation new initialize type: #Patch).
	self addInstanceVarNamed: itsName withValue: (aPatchMorph assuredPlayer).
	self class compileAccessorsFor: itsName.
	openViewers := self allOpenViewersOnReceiverAndSiblings.
	openViewers isEmpty
		ifTrue: [^ self]
		ifFalse: [| aPresenter | 
			(aPresenter := self costume presenter)
				ifNil: [^ self].
			openViewers
				do: [:aViewer | aPresenter updateViewer: aViewer forceToShow: ScriptingSystem nameForInstanceVariablesCategory]]
