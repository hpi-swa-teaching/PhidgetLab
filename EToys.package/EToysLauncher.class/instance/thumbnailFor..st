initialization
thumbnailFor: projectName 
	| project thumbnailName newForm array |
	newForm := (project := Project named: projectName)
				ifNil: [array := self fullPathForProjectNamed: projectName.
					thumbnailName := array first , FileDirectory slash , projectName , '.gif'.
					[ImageReadWriter formFromFileNamed: thumbnailName]
						on: FileDoesNotExistException
						do: [^ Form extent: 100 @ 75]]
				ifNotNil: [project thumbnail].
	^ newForm scaledToSize: 100 @ 75