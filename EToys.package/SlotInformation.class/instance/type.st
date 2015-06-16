access
type
	"Answer the type of the receiver, initializing it to Number if it is nil"

	type isEmptyOrNil ifTrue: [^ type := #Number].
	type first isUppercase ifFalse: [^ type := type capitalized].
		"because of lingering, annoying issue of projects created in a plug-in image"
	^ type