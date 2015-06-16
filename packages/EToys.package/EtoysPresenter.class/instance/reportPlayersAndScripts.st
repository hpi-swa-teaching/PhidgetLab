playerList
reportPlayersAndScripts
	"Open a window which contains a report on players and their scripts"

	| aList aString |
	(aList := self uniclassesAndCounts) ifEmpty:  [^ self inform: 'there are no scripted players' translated].
	aString := String streamContents:
		[:aStream |
			aList do:
				[:aPair |
					aStream nextPutAll: aPair first name, ' -- ', aPair second printString.
					aStream nextPutAll: ' ', (aPair second > 1 ifTrue: ['instances'] ifFalse: ['instance']) translated, ', '.
					aStream nextPutAll: 'named' translated.
					aPair first allInstancesDo: [:inst | aStream space; nextPutAll: inst externalName].
					aStream cr].
			aStream cr.
			aList do:
				[:aPair |
					aStream cr.
					aStream nextPutAll: 
'--------------------------------------------------------------------------------------------'.
					aStream cr; nextPutAll: aPair first typicalInstanceName.
					aStream nextPutAll: '''s' translated.
					aStream nextPutAll: ' scripts:' translated.
					aPair first addDocumentationForScriptsTo: aStream]].

	(StringHolder new contents: aString)
		openLabel: 'All scripts in this project' translated

"self currentWorld presenter reportPlayersAndScripts"