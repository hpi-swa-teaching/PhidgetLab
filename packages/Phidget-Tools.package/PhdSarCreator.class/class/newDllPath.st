installScripting
newDllPath

	"Returns code in string for execution when installing sar file"
	^ '(FileDirectory on: SmalltalkImage current imagePath)
													containingDirectory containingDirectory fullName,
		FileDirectory slash,
		''', self dllFileName, ''''