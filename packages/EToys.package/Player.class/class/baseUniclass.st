user-scripted subclasses
baseUniclass
	"Answer the uniclass that new instances should be instances of; this protocol allows for individual cards of a background to have their own class"

	| curr |
	curr := self.
	[curr theNonMetaClass superclass name endsWithDigit]
		whileTrue:
			[curr := curr superclass].
	^ curr

"CardPlayer100 baseUniclass 
CardPlayer100X baseUniclass
"