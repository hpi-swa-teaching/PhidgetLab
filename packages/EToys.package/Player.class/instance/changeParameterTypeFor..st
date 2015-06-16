costume
changeParameterTypeFor: aSelector
	"Change the parameter type for the given selector.  Not currently sent, since types are now set by direct manipulation in the Scriptor header.  If this were reinstated someday, there would probably be an issue about getting correct-looking Parameter tile(s) into the Scriptor header(s)"

	| current typeChoices typeChosen |
	current := self typeforParameterFor: aSelector.
	typeChoices := Vocabulary typeChoices.
	typeChosen := UIManager default 
		chooseFrom: typeChoices 
		values: typeChoices  
		title: ('Choose the TYPE
for the parameter (currently ', current, ')').
	self setParameterFor: aSelector toType: typeChosen

