*Etoys-support
inherentSelector
	"Given a selector of the form #getAbc, return the inherent slotname selector that corresponds, which is to say, getterSelector with the leading 'get' removed and with the next character forced to lower case; this is the inverse of #getterSelectorFor:"

	"Utilities inherentSelectorForGetter: #getWidth"
	((self size < 4) or: [(self beginsWith: 'get') not])
			ifTrue: [ ^ self].
	^ ((self at: 4) asLowercase asString, (self copyFrom: 5 to: self size)) asSymbol