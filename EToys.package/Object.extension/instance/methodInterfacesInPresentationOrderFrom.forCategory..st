*Etoys-viewer
methodInterfacesInPresentationOrderFrom: interfaceList forCategory: aCategory 
	"Answer the interface list sorted in desired presentation order, using a 
	static master-ordering list, q.v. The category parameter allows an 
	escape in case one wants to apply different order strategies in different 
	categories, but for now a single master-priority-ordering is used -- see 
	the comment in method EToyVocabulary.masterOrderingOfPhraseSymbols"

	| masterOrder ordered unordered |
	masterOrder := Vocabulary eToyVocabulary masterOrderingOfPhraseSymbols.
	ordered := SortedCollection sortBlock: [:a :b | a key < b key].
	unordered := SortedCollection sortBlock: [:a :b | a wording < b wording].

	interfaceList do: [:interface | 
		| index |
		index := masterOrder indexOf: interface elementSymbol.
		index isZero
			ifTrue: [unordered add: interface]
			ifFalse: [ordered add: index -> interface]].

	^ Array
		streamContents: [:stream | 
			ordered do: [:assoc | stream nextPut: assoc value].
			stream nextPutAll: unordered]