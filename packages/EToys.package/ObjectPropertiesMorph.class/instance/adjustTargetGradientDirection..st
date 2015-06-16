as yet unclassified
adjustTargetGradientDirection: aFractionalPoint

	| fs p |

	(fs := myTarget fillStyle) isGradientFill ifFalse: [^self].
	fs direction: (p := (aFractionalPoint * myTarget extent) rounded).
	self showSliderFeedback: p.
	myTarget changed.
