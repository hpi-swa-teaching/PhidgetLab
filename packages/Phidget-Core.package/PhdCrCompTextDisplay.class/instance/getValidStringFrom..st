private
getValidStringFrom: aString

	phidget isAttached ifFalse: [ ^ nil ].
	(aString isKindOf: ByteString) ifFalse: [ ^ nil ].
	^ aString truncateTo: self columns.