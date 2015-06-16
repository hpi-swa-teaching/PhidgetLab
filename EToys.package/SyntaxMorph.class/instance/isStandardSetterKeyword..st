node to morph
isStandardSetterKeyword: key

	self flag: #yoCharCases.

	key size > 4 ifFalse: [^false].
	(key endsWith: ':') ifFalse: [^false].
	(key beginsWith: 'set') ifFalse: [^false].
	key fourth isUppercase ifFalse: [^false].
	^true
