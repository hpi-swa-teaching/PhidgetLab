utilities
sortedProjectFiles
	"self basicNew sortedProjectFiles"
	| entries |
	entries := self sortedAllProjectFiles.
	showGallery ifTrue: [^ entries].
	^ entries size > 10
		ifTrue: [entries first: 10]
		ifFalse: [entries]