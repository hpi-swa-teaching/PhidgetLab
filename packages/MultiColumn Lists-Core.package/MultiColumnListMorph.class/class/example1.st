examples
example1
	"Show a simple list box, based on an array of Strings."
	"
		MultiColumnListMorph example1
	"
	|pmcolm theList|

	theList _ #( '1' '2' '3' '4' '5' '6' '7' '8' '9' '11' '12' '13' '14' '15' '16' '17' '18' '19' ).
	pmcolm _ MultiColumnListMorph 
		on: nil 
		list: theList 
		initialSelectedObject: nil 
		changeSelected: nil.
	pmcolm openInWorld