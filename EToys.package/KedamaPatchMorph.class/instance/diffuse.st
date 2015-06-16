commands and slots
diffuse

	| dim newV |
	dim := form extent.
	form bits class == ByteArray ifTrue: [form unhibernate].
	newV := Bitmap new: form bits size.
	self primDiffuseFrom: form bits
		to: newV
		width: dim x
		height: dim y
		delta: diffusionRate truncated.
	form bits: newV.
	self formChanged.
