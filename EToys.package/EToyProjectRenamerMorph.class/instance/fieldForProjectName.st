as yet unclassified
fieldForProjectName

	| tm |

	tm := self genericTextFieldNamed: 'projectname'.
	tm crAction: (MessageSend receiver: self selector: #doOK).
	tm setBalloonText: 'Pick a name 24 characters or less and avoid the following characters:

 : < > | / \ ? * " .' translated.
	^tm
	
