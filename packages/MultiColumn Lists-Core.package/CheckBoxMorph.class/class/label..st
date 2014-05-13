instance creation
label: aString
	| tmp|

	tmp := self new.
	tmp labelMorph: (StringMorph contents: aString).
	tmp checkedMorph: (self defaultCheckedMorph: tmp labelMorph).
	tmp unCheckedMorph: (self defaultUnCheckedMorph: tmp labelMorph).
	^tmp
