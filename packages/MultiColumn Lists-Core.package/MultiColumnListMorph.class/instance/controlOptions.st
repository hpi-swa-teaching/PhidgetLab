controlOptions
controlOptions
	"Control Options.  Things about how this instance of MultiColumnListMorph work.  For instance, is sorting/filtering/columnFiltering allowed?  Is user selection allowed?"
	^controlOptions ifNil: [controlOptions _ Dictionary new]
