installScripting
copyDll

	"Returns code in string for execution when installing sar file"
	^ '(FileDirectory new fileExists: ', self newDllPath, ')
		ifFalse: [self
					extractMember: ''', self dllFileName, '''
					toFileNamed: ', self newDllPath, ']. '.