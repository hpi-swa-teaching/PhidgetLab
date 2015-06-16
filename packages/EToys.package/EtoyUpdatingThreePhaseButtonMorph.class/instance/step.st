stepping and presenter
step
	| newBoolean |

	state == #pressed ifTrue: [^ self].
	newBoolean := target perform: getSelector withArguments: arguments.
	newBoolean == self isOn
		ifFalse:
			[self state: (newBoolean ifTrue: [#on] ifFalse: [#off])]
