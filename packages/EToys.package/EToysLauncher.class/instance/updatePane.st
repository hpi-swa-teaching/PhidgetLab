actions
updatePane
	| entries fileNames |
	self removeAllMorphs.
	entries := self sortedProjectFiles.
	fileNames := entries
				collect: [:each | each first].
	fileNames
		do: [:each | self
				addMorphBack: (self buildButtonFor: each)]