installScripting
installationInstructions

	"Returns code in string for execution when installing sar file"
	^ self installPackages,
		self installAdditionalPackages,
		self copyDll,
		self compileEtoysPresenterMethod.