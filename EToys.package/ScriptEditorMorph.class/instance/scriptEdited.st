private
scriptEdited

	| anEditor |
	(anEditor := self topEditor) ifNotNil: [anEditor recompileScript]