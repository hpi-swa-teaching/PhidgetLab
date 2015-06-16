node to morph
isStandardGetterSelector: key

	self flag: #yoCharCases.

	key size > 3 ifFalse: [^false].
	(key beginsWith: 'get') ifFalse: [^false].
	key fourth isUppercase ifFalse: [^false].
	^true
