slots
removeInstVarAccessorsFor: varName
	| nameString |

	nameString := varName asString capitalized.
	self removeSelector: ('get', nameString) asSymbol.
	self removeSelector: ('set', nameString, ':') asSymbol