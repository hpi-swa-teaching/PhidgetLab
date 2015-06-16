as template
matchNames
	| list tms stk crds |
	"List of names of cards that matched the last template search."

	tms := self class classPool at: #TemplateMatches ifAbsent: [^ #()].
	list := (tms at: self ifAbsent: [#(#() 0)]) first.
	stk := costume valueOfProperty: #myStack ifAbsent: [nil].
	crds := stk ifNil: [#()] ifNotNil: [stk cards].
	^ list collect: [:cd | | str ll | 
		str := ''.
		(ll := cd allStringsAfter: nil) ifNotNil: [
			str := ll inject: '' into: [:strr :this | strr, this]]. 
		(str copyFrom: 1 to: (30 min: str size)), '...  (' , (crds indexOf: cd) printString, ')'].
		"Maybe include a card title?"