installScripting
installPackages

	"Returns code in string for execution when installing sar file"
	^ (self packagesForSar
		inject: String new
		into: [:instructions :each |
				instructions, 'self fileInMonticelloZipVersionNamed: ''', each, '.mcz''. ']), ' '.