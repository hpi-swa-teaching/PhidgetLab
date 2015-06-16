private
checkFirstPairFor: stmt in: obj

	^ self checkRequireVectorIn: stmt for: obj.
"

	| receiver selector ret |
	receiver := Compiler evaluate: (self getReceiverFromStatement: stmt) name for: obj logged: false.
	selector := (self getSelectorFromStatement: stmt) key.
	ret := self isVectorizationRequiredWithPlayer: receiver andSelector: selector.
	attributes setAttribute: #firstTurtle of: stmt to: receiver.
	attributes setAttribute: #requireVector of: stmt to: ret.
	^ ret.
"