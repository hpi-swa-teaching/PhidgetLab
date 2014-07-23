sarCreation
installationInstructions

	"Returns code in string for execution when installing sar file"
	^ (self packagesForSar
		inject: String new
		into: [:instructions :each |
				instructions, 'self fileInMonticelloZipVersionNamed: ''', each, '.mcz''. ']),
		self imageIsEtoys,
			'ifTrue:
				[(FileDirectory new fileExists: ', self dllPathForEtoys, ')
					ifFalse: [self
						extractMember: ''', self dllFileName, '''
						toFileNamed: ', self dllPathForEtoys, ']] ',
			'ifFalse: [',
				(self additionalPackages
					inject: String new
					into: [:instructions :each |
						instructions, 'self fileInMonticelloZipVersionNamed: ''', each, '.mcz''. ']), ']. '.