customevents-status control
presentScriptStatusPopUp
	"Put up a menu of status alternatives and carry out the request"

	| reply  m menu submenu |

	menu := MenuMorph new.
	self addStatusChoices: #( normal " -- run when called" ) toMenu: menu.
	self addStatusChoices: 
		#(	paused 		"ready to run all the time"
			ticking			"run all the time" )
		toMenu: menu.
	self addStatusChoices: (ScriptingSystem standardEventStati copyFrom: 1 to: 3) toMenu: menu.
	self addStatusChoices: (ScriptingSystem standardEventStati allButFirst: 3) toMenu: menu.
	self addStatusChoices: 
		#(opening			"when I am being opened"
			closing			"when I am being closed" )
		toMenu: menu.
	
	submenu := MenuMorph new.
	self addStatusChoices: (ScriptingSystem globalCustomEventNamesFor: player) toSubMenu: submenu forMenu: menu.
	menu add: 'more... ' translated subMenu: submenu.

	(Preferences allowEtoyUserCustomEvents) ifTrue: [
		submenu addLine.
		self addStatusChoices: ScriptingSystem userCustomEventNames toSubMenu: submenu forMenu: menu.
		submenu addLine.
		self addStatusChoices:
			(Array streamContents: [ :s | s nextPut: { 'define a new custom event'. #defineNewEvent }.
			ScriptingSystem userCustomEventNames isEmpty
				ifFalse: [ s nextPut: { 'delete a custom event'. #deleteCustomEvent } ]])
			toSubMenu: submenu forMenu: menu ].
	
	menu addLine.

	self addStatusChoices: #(
		('what do these mean?'explainStatusAlternatives)
		('apply my status to all siblings' assignStatusToAllSiblings) ) toMenu: menu.

	menu addTitle: 'When should this script run?' translated.
	menu submorphs last delete.
	menu invokeModal.
	
	reply := menu modalSelection.

	reply == #explainStatusAlternatives ifTrue: [^ self explainStatusAlternatives].
	reply == #assignStatusToAllSiblings ifTrue: [^ self assignStatusToAllSiblings].
	reply == #defineNewEvent ifTrue: [ ^self defineNewEvent ].
	reply == #deleteCustomEvent ifTrue: [ ^self deleteCustomEvent ].

	reply ifNotNil: 
		[self status: reply.  "Gets event handlers fixed up"
		reply == #paused ifTrue:
			[m := player costume.
			(m isKindOf: SpeakerMorph) ifTrue: [m stopSound]].
		self updateAllStatusMorphs]
