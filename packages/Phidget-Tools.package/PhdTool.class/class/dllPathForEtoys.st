sarCreation
dllPathForEtoys

	"Returns code in string for execution when installing sar file"
	^ 'FileDirectory default containingDirectory fullName,
		FileDirectory slash,
		''Etoys-To-Go 5.0.app'',
		FileDirectory slash,
		''', self dllFileName, ''''