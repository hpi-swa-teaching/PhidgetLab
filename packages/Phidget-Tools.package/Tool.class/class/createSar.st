sarCreation
createSar

	| installationInstructions zip |

	installationInstructions := ''.

	FileDirectory deleteFilePath: self sarFileName.

	zip := ZipArchive new.

	self packagesForSar
		do: [:each |
			| mczStream |
			mczStream := RWBinaryOrTextStream on: (String new: 10000).
			(MCWorkingCopy forPackage: (MCPackage new name: each))
															newVersion fileOutOn: mczStream.
			(zip addString: mczStream contents as: each, '.mcz') desiredCompressionLevel: 0.
			installationInstructions := installationInstructions,
									'self fileInMonticelloZipVersionNamed: ''', each, '.mcz''. '].

	installationInstructions := installationInstructions,
								'(FileDirectory new fileExists: ', self dllPathForEtoys, ')
									ifFalse: [self
												extractMember: ''PhidgetPlugin.dll''
												toFileNamed: ', self dllPathForEtoys, ']. '.

	zip addFile: self dllPathForSqueak as: self dllFileName.

	zip addString: installationInstructions as: 'install/preamble'.

	zip writeToFileNamed: self sarFileName.