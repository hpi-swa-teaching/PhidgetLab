instance creation
supplementaryPartsDescriptions
	"Answer additional items for the parts bin"

	Preferences universalTiles ifFalse: [^ #()].

	^ {DescriptionForPartsBin
		formalName: 'Number (fancy)'
		categoryList: #('Basic')
		documentation: 'A number readout for a Stack.  Shows current value.  Click and type the value.  Shift-click on title to edit.'
		globalReceiverSymbol: #NumericReadoutTile
		nativitySelector: #authoringPrototype.

	   DescriptionForPartsBin
		formalName: 'Number (bare)'
		categoryList: #('Basic')
		documentation: 'A number readout for a Stack.  Shows current value.  Click and type the value.'
		globalReceiverSymbol: #NumericReadoutTile
		nativitySelector: #simplePrototype.

	   DescriptionForPartsBin
		formalName: 'Number (mid)'
		categoryList: #('Basic')
		documentation: 'A number readout for a Stack.  Shows current value.  Click and type the value.'
		globalReceiverSymbol: #NumericReadoutTile
		nativitySelector: #borderedPrototype}