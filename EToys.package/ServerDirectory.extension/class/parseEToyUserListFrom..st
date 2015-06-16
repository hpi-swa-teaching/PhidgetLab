*eToys-school support
parseEToyUserListFrom: urlString
	| url userString userList |
	urlString ifNil:[^nil].
	url := urlString asUrl.
	userString := ["Note: We need to prevent going through the plugin API 
	when retrieving a local (file) URL, since the plugin API
	(correctly) rejects file:// downloads."
		Cursor wait showWhile:[
			(url hasRemoteContents) ifTrue:[
				"Go through the browser (if present)"
				(HTTPClient httpGet: url asString) contents.
			] ifFalse:[
				"Go grab it directly"
				url retrieveContents contents.
			].
		].
	] on: Error do:[nil].
	userString ifNil:[^nil].
	userList := userString lines collect: [:each| each withBlanksTrimmed].
	userList := userList reject:[:any| any isEmpty].
	(userList first = '##user list##') ifFalse:[^nil].
	userList := userList copyFrom: 2 to: userList size.
	^userList