accessing
dllPathForEtoys

	^ 'FileDirectory default containingDirectory fullName,
		FileDirectory slash,
		''Etoys-To-Go 5.0.app'',
		FileDirectory slash,
		''', self dllFileName, ''''