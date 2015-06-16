type checking
receiverOrArgType
	| ty |
	"Return my type in my role as a receiver or as an argument.  Ask my enclosing message first, then ask myself.  (If owner accepts any #object, and I am a #point, do return #object.)"

	^ (ty := self receiverOrArgTypeAbove) == #unknown
		ifTrue: [self resultType]
		ifFalse: [ty]