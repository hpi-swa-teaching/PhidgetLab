accessing
currentDllPath

	^ (FileDirectory on: SmalltalkImage current imagePath)
													containingDirectory containingDirectory fullName,
		FileDirectory slash,
		self dllFileName.