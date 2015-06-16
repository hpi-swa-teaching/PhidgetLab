class initialization
initialize
	Vocabulary embraceAddedTypeVocabularies.
	Preferences
		addPreference: #allowEtoyUserCustomEvents
		categories:  #('scripting')
		default: false
		balloonHelp: 'If true, you can define your own events that can trigger scripts within a World.'
		projectLocal:  false
		changeInformee:  self
		changeSelector: #allowEtoyUserCustomEventsPreferenceChanged