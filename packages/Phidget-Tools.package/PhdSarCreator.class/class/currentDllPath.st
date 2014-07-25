accessing
currentDllPath

	^ (FileDirectory on: SmalltalkImage current imagePath)
													containingDirectory containingDirectory,
		self dllFileName