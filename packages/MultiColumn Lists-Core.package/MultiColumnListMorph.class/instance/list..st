accessing
list: listArrays 
	"cbc 2005-01-12 - Note, there are one big enhancements to this.
		You can now use #specifications: on this object with a SSMSpec, and using this, you can pass in an array of arbitrary objects.  The specification will be used to determine what actually shows up."
	"For now, we are just using arrays of strings instead of objects.  Full usefullness to follow"
	"Set the receiver's list as specified"
	"cbc 4/29/2003 17:11 - Allow a simple array of strings to be passed in, and transform them
		an array of arrays containing each string."

	| orgList |
"TimeProfileBrowser onBlock: ["
		currentTop := 1.
		list := listArrays ifNil: [Array new].
		origObjects := list.
		specifications ifNotNil: [^self newList]. "If we have a spec, use the new methodology"
			"Convert the list to a list of StackedStringMorphs"
			font := TextStyle defaultFont.
			list := list asArray collect: 
							[:array | 
							(StackedStringMorph 
								on: (array isString ifTrue: [Array with: array] ifFalse: [array]))
								font: font;
								backgroundColor: self color;
								yourself].
			(sort notNil or: [filter notEmpty]) ifTrue: [orgList := list copy].
			filter ifNotEmpty: [
				list := list select: [:item | 
					filter allSatisfy: [:filt| ([item at: filt first] on: Error do: ['[No Value]']) = filt last]
					].
				].
			sort ifNotNil: [list := (list asSortedCollection: sort) asArray].
			(sort notNil or: [filter notEmpty]) 
				ifTrue: 
					[sortXRef := (1 to: list size) 
								collect: [:idx | orgList indexOf: (list at: idx)]].
			self recalcSizes.
			self moveSelectionIntoView
"		]"