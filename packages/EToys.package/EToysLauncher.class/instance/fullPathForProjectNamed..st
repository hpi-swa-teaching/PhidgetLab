utilities
fullPathForProjectNamed: projectName 
	"Answer {directory name. file name}"
	"self basicNew fullPathForProjectNamed: 'DemonScript'"
	| entries fileName directory |
	entries := self sortedProjectFiles.
	fileName := (entries
				detect: [:each | (Project parseProjectFileName: each first) first = projectName]) first.
	directory := self directories
				detect: [:each | (FileDirectory on: each)
						includesKey: fileName].
	^ {directory. fileName}