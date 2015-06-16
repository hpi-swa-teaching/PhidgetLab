*etoys
morphOrList: aFileName stream: preStream fromDirectory: aDirectoryOrNil archive: archive
	"Answer morphOrList or nil if problem happened"
	|  projStream localDir morphOrList |
	projStream := archive
		ifNil: [preStream]
		ifNotNil: [self projectStreamFromArchive: archive].
	(self checkSecurity: aFileName preStream: preStream projStream: projStream)
		ifFalse: [^nil].
	localDir := Project squeakletDirectory.
	aFileName ifNotNil: [
		(aDirectoryOrNil isNil or: [aDirectoryOrNil pathName
~= localDir pathName]) ifTrue: [
			localDir deleteFileNamed: aFileName.
			(localDir fileNamed: aFileName) binary
				nextPutAll: preStream remainingContents;
				close.
		].
	].
	morphOrList := projStream asUnZippedStream.
	preStream sleep.		"if ftp, let the connection close"
	^ morphOrList
