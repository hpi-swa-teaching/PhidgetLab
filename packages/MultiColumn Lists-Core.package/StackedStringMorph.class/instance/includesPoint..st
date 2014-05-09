accessing
includesPoint: aPoint
	bounds top > aPoint y ifTrue: [^false].
^bounds bottom >= aPoint y