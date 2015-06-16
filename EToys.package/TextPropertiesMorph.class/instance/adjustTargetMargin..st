as yet unclassified
adjustTargetMargin: aFractionalPoint

	| n |

	n := (aFractionalPoint * 4) rounded.
	myTarget margins: n.
	self showSliderFeedback: n.
