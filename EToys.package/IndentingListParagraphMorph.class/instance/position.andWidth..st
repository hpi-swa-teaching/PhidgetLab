as yet unclassified
position: p andWidth: w

	| widthChanged |

	widthChanged := self width ~= w.
	self position: p.
	self width: w.
	submorphs isEmpty ifTrue: [^self height].
	widthChanged ifTrue: [
		self repositionText.
	].
	self height: self desiredHeight.
	^self desiredHeight
