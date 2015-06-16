*Etoys-customevents-scripting
removeUserCustomEventNamed: aSymbol
	^self userCustomEventsRegistry removeKey: aSymbol ifAbsent: [].