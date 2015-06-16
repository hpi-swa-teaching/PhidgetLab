utilities
sortedAllProjectFiles
	"self basicNew sortedAllProjectFiles"
	| entries |
	entries := self projectFiles asArray
				sort: [:a :b | a modificationTime > b modificationTime].
	^ entries