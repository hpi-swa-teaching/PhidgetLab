*eToys-school support
eToyUserListUrlForFileDirectory: aFileDirectory
	^self localEToyUserListUrls at: aFileDirectory ifAbsent:[nil]