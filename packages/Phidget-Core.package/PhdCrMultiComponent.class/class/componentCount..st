multi-component
componentCount: phidget
	"Returns the number of components in a multicomponent phidget.
	Uses a primitive the subclasses must define. This primitive can for example do a call to get the number of sensors on an InterfaceKit.
	If there was an error getting the value, 0 is returned."
	
	phidget isAttached ifTrue: [ | result |
		result := self primComponentCount: phidget id.
		result ifNil: [ ^ 0 ].
		^ result ].
	 ^ 0