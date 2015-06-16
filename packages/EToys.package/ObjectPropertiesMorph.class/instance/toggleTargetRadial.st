as yet unclassified
toggleTargetRadial

	| fs |

	(fs := myTarget fillStyle) isGradientFill ifFalse: [^self].
	fs radial: fs radial not.
	myTarget changed.
	self doEnables.