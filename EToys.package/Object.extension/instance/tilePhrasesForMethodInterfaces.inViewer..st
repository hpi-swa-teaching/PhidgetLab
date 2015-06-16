*Etoys-viewer
tilePhrasesForMethodInterfaces: methodInterfaceList inViewer: aViewer
	"Return a collection of ViewerLine objects corresponding to the method-interface list provided.   The resulting list will be in the same order as the incoming list, but may be smaller if the viewer's vocbulary suppresses some of the methods, or if, in classic tiles mode, the selector requires more arguments than can be handled."

	| toSuppress interfaces |
	toSuppress := aViewer currentVocabulary phraseSymbolsToSuppress.
	interfaces := methodInterfaceList reject: [:int | toSuppress includes: int selector].
	Preferences universalTiles ifFalse:  "Classic tiles have their limitations..."
		[interfaces := interfaces select:
			[:int |
				| itsSelector |
				itsSelector := int selector.
				itsSelector numArgs < 2 or:
					"The lone two-arg loophole in classic tiles"
					[#(color:sees:) includes: itsSelector]]].

	^ interfaces collect:
		[:aMethodInterface |
			| resultType |
			((resultType := aMethodInterface resultType) notNil and: [resultType ~~ #unknown]) 
				ifTrue:
					[aViewer phraseForVariableFrom: aMethodInterface]
				ifFalse:
					[aViewer phraseForCommandFrom: aMethodInterface]]