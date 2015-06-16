*eToys-school support
eToyUserListForFileDirectory: aFileDirectory
	| urlString |
	urlString := self eToyUserListUrlForFileDirectory: aFileDirectory.
	urlString ifNil:[^nil].
	^self parseEToyUserListFrom: urlString