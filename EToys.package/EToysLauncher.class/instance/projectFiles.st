utilities
projectFiles
	"Answer a collection of file entry. Only recent version is picked up."
	"self basicNew projectFiles"
	| entries |
	entries := self directories
				inject: OrderedCollection new
				into: [:collection :each | 
					collection addAll: (FileDirectory on: each) entries.
					collection].
	^ FileList2 projectOnlySelectionMethod: entries