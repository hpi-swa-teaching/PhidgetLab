menu
writeSingletonData
	"Backgrounds that have just one card, may never get their data written into a CardPlayer. Make sure we do it."

	| sieve |
	sieve := IdentityDictionary new.
	pages do: [:pp | sieve at: pp put: 0].
	self privateCards do: [:cc | sieve at: cc costume put: (sieve at: cc costume) + 1].
	sieve associationsDo: [:ass | 
		ass value = 1 ifTrue:
			[ass key player commitCardPlayerDataFrom: ass key]].
			"If currently showing card, may be some trouble... <- tk note 5/01"