misc
unusedScriptName
	"answer a name of the form 'scriptN', where N is one higher than the highest-numbered similarly-named script"

	| highestThus |
	highestThus := 0.
	self class tileScriptNames do:
		[:aName | | aPair |
			aPair := (aName copyWithout: $:) stemAndNumericSuffix.
			aPair first = 'script' translated ifTrue: [highestThus := highestThus max: aPair last]].
	^ ('script' translated, (highestThus + 1) printString) asSymbol