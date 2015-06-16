accessing
masterOrderingOfCategorySymbols
	"Answer a dictatorially-imposed presentation list of category symbols.
	This governs the order in which available vocabulary categories are presented in etoy viewers using the etoy vocabulary.
	The default implementation is that any items that are in this list will occur first, in the order specified here; after that, all other items will come, in alphabetic order by their translated wording."

	^#(basic #'color & border' geometry motion #'pen use' tests layout #'drag & drop' scripting observation button search miscellaneous)