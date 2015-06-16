scripts-kernel
slotInfoButtonHitFor: aGetterSymbol inViewer: aViewer
	"The user made a gesture asking for slot menu for the given getter symbol in a viewer; put up the menu."

	| aMenu slotSym aType typeVocab interface selector |

	 (#(+ - * /) includes: aGetterSymbol)
		ifTrue:
			 [^ self inform: aGetterSymbol, ' is used for vector operations'].

	slotSym := aGetterSymbol inherentSelector.
	aType := self typeForSlotWithGetter: aGetterSymbol asSymbol.
	aMenu := MenuMorph new defaultTarget: self.
	interface := aViewer currentVocabulary methodInterfaceAt: aGetterSymbol ifAbsent: [nil].
	selector := interface isNil
		ifTrue: [slotSym asString]
		ifFalse: [interface selector].
	aMenu addTitle: (selector, ' (', (aType asString translated), ')').

	aType = #Patch ifTrue: [
		aMenu add: 'grab morph' translated
			target: (self perform: aGetterSymbol)
			selector: #grabPatchMorph
			argument: #().
			aMenu addLine.
	].

	(typeVocab := Vocabulary vocabularyForType: aType) addWatcherItemsToMenu: aMenu forGetter: aGetterSymbol.

	(self slotInfo includesKey: slotSym)
		ifTrue:
			[aMenu add: 'change value type' translated selector: #chooseSlotTypeFor: argument: aGetterSymbol.
			typeVocab addUserSlotItemsTo: aMenu slotSymbol: slotSym.
			aMenu add: ('remove "{1}"' translated format: {slotSym}) selector: #removeSlotNamed: argument: slotSym.
			aMenu add: ('rename "{1}"' translated format: {slotSym}) selector: #renameSlot: argument: slotSym.			aMenu addLine].

	typeVocab addExtraItemsToMenu: aMenu forSlotSymbol: slotSym.  "e.g. Player type adds hand-me-tiles"

	aMenu add: 'show categories....' translated target: aViewer selector: #showCategoriesFor: argument: aGetterSymbol.
	self addIdiosyncraticMenuItemsTo: aMenu forSlotSymol: slotSym.

	aMenu items isEmpty ifTrue:
		[aMenu add: 'ok' translated action: #yourself].

	aMenu popUpForHand: aViewer primaryHand in: aViewer world