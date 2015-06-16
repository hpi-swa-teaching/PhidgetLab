as template
results
	"Return my (cardlist index) pair from the last search"

	^ (self class classPool at: #TemplateMatches ifAbsent: [^ Array new: 2]) at: self
