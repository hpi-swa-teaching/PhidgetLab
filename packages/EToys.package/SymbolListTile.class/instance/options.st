accessing
options
	^ {self choices. self choices
		collect: [:each | ScriptingSystem helpStringForOperator: literal]}