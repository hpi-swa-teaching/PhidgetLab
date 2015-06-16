customevents-initialization
updateChoices
	choices := (Vocabulary vocabularyNamed: dataType) choices.
	(choices includes: literal) ifFalse: [ literal := choices first. self changed ]