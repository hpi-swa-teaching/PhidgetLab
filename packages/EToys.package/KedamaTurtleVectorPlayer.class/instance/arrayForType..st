private
arrayForType: typeName

	| newArray |
	(typeName = #Number) ifTrue: [
		newArray := KedamaFloatArray new: self size.
	].
	(typeName = #Color) ifTrue: [
		newArray := WordArray new: self size.
	].
	(typeName = #Boolean) ifTrue: [
		newArray := ByteArray new: self size.
	].

	newArray ifNil: [
		newArray := Array new: self size.
	].

	^ newArray.
