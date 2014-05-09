examples
example3
	"Show a list box with multiple columns, based on an array of arrays of Strings."
	"
		MultiColumnListMorph example3
	"
	|pmcolm theList|

	theList _ (OrderedCollection new: 7)
	add: #( 'me' 'you' 'him' );
	add: #( 'mih' 'uoy' 'em' );
	add: #( 'me' 'you' 'him' );
	add: #( 'mih' 'uoy' 'em' );
	add: #( 'me' 'you' 'him' );
	add: #( 'mih' 'uoy' 'em' );
	add: #( 'x' '29/4%' 'YAHOO' );
	yourself.
	pmcolm _ MultiColumnListMorph 
		on: nil 
		list: theList 
		initialSelectedObject: nil 
		changeSelected: nil.
	pmcolm openInWorld