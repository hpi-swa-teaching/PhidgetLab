installScripting
installAdditionalPackages

	"Returns code in string for execution when installing sar file"
	^ self imageIsNotEtoys,
		'ifTrue: [',
			(self additionalPackages
				inject: String new
				into: [:instructions :each |
					instructions, 'self fileInMonticelloZipVersionNamed: ''', each, '.mcz''. ']), ']. '.