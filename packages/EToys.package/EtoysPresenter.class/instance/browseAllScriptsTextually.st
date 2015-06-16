playerList
browseAllScriptsTextually
	"Open a method-list browser on all the scripts in the project"

	| aList aMethodList |
	(aList := self uniclassesAndCounts) size = 0 ifTrue: [^ self inform: 'there are no scripted players'].
	aMethodList := OrderedCollection new.
	aList do:
		[:aPair | aPair first addMethodReferencesTo: aMethodList].
	aMethodList size > 0 ifFalse: [^ self inform: 'there are no scripts in this project!'].
	
	SystemNavigation new 
		browseMessageList: aMethodList 
		name: 'All scripts in this project' 
		autoSelect: nil

"
ActiveWorld presenter browseAllScriptsTextually
"