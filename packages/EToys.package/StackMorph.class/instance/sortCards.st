background
sortCards
	"Let the user provide an inst var on which to sort the cards of a background."

	| names aMenu |
	names := self currentPage player class instVarNames.
	aMenu := MenuMorph new defaultTarget: self.
	aMenu addTitle: 'Choose field by which to sort:'.
	names do: [:n | aMenu add: n selector: #sortByField: argument: n].
	aMenu popUpInWorld