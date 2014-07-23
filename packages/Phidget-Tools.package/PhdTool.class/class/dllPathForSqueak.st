sarCreation
dllPathForSqueak

	^ FileDirectory default containingDirectory containingDirectory fullName,
		FileDirectory slash,
		self dllFileName