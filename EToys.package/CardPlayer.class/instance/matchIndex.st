as template
matchIndex
	| tms |
	"Index of one we are looking at, in the cards that matched the last search with this template."

	tms := self class classPool at: #TemplateMatches ifAbsent: [^ 0].
	^ (tms at: self ifAbsent: [#(0 0)]) second.
