*etoys
checkSecurity: aFileName preStream: preStream projStream: projStream
	"Answer true if passed"
	| trusted enterRestricted |
	trusted := SecurityManager default positionToSecureContentsOf:
projStream.
	trusted ifFalse:
		[enterRestricted := (preStream isTypeHTTP or:
[aFileName isNil])
			ifTrue: [Preferences securityChecksEnabled]
			ifFalse: [Preferences standaloneSecurityChecksEnabled].
		enterRestricted
			ifTrue: [SecurityManager default enterRestrictedMode
				ifFalse:
					[preStream close.
					^ false]]].
	^ true
