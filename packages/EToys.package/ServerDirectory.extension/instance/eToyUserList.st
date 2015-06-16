*Etoys-school support
eToyUserList
	"Return a list of all known users for eToy login support"
	| urlString |
	eToyUserList ifNotNil:[^eToyUserList].
	urlString := self eToyUserListUrl.
	urlString ifNil:[^nil].
	eToyUserList := self class parseEToyUserListFrom: urlString.
	^eToyUserList