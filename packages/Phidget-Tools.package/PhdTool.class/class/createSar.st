sarCreation
createSar

	| zip |

	self deleteSar.

	zip := ZipArchive new.
	self addPackagesTo: zip.	
	zip
		addFile: self dllPathForSqueak as: self dllFileName;
		addString: self installationInstructions as: 'install/preamble';
		writeToFileNamed: self sarFileName.