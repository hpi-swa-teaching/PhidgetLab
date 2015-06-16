*Etoys-drawing
fullDrawBookMorph: aBookMorph
	" draw all the pages in a book morph, but only if it is the top-level morph "

	morphLevel = 1 ifFalse: [^ super fullDrawBookMorph: aBookMorph].

	"Unfortunately, the printable 'pages' of a StackMorph are the cards, but for a BookMorph, they are the pages.  Separate the cases here."
	(aBookMorph isKindOf: StackMorph) 
		ifTrue: [
			aBookMorph cards do: [:aCard |
				aBookMorph goToCard: aCard.	"cause card-specific morphs to be installed"
				pages := pages + 1.
				target print: '%%Page: '; write: pages; space; write: pages; cr.
				self drawPage: aBookMorph currentPage]]
		ifFalse: [
			aBookMorph pages do: [:aPage |
				pages := pages + 1.
				target print: '%%Page: '; write: pages; space; write: pages; cr.
				self drawPage: aPage]].
	morphLevel = 0 ifTrue: [ self writeTrailer: pages ].
