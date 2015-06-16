accessing
currentTextInButton

	| existing |

	existing := self currentTextMorphsInButton.
	existing isEmpty ifTrue: [^nil].
	^existing first
