as yet unclassified
adjustTargetShadowOffset: aFractionalPoint

	| n |

	myTarget changed; layoutChanged.
	myTarget shadowOffset: (n := (aFractionalPoint * 4) rounded).
	self showSliderFeedback: n.
	myTarget changed; layoutChanged.
