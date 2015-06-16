*Etoys-customevents-scripting
userCustomEventNames
	| reg |
	reg := self valueOfProperty: #userCustomEventsRegistry ifAbsent: [ ^#() ].
	^reg keys asArray sort