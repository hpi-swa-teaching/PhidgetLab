running
pausedOrTicking
	"Answer true if the receiver is either in paused or ticking status, false otherwise"

	^ #(paused ticking) includes: status