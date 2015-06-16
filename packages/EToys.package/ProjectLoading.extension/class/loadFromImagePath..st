*etoys
loadFromImagePath: projectName 
	"Open the project in image path. This is used with projects in OLPC distribution.
	- The image's directory is used.
	- Squeaklets directory is ignored.
	- If there is a project named projectName, it is opened.
	"
	"self openFromImagePath: 'Welcome'"
	| directory aStream entries fileName |
	(Project named: projectName)
		ifNotNilDo: [:project | ^ project].
	directory := FileDirectory on: Smalltalk imagePath.
	entries := FileList2 projectOnlySelectionMethod: directory entries.
	fileName := (entries
		detect: [:each | (Project parseProjectFileName: each name) first = projectName]
		ifNone: [^ self]) name.
	self
		showProgressBarDuring: [ProgressNotification signal: '0'.
			directory := FileDirectory on: Smalltalk imagePath.
			aStream := directory readOnlyFileNamed: fileName.
			self
				loadName: fileName
				stream: aStream
				fromDirectory: directory
				withProjectView: nil]