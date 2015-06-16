*Etoys-support
asGetterSelector
	"Answer the corresponding getter.  Two idiosyncratic vectorings herein... " 
	| aSymbol |
	(aSymbol := self asSymbol) == #isOverColor: ifTrue: [^ #seesColor:].
	aSymbol == #copy ifTrue: [^ #getNewClone].

	^ ('get', (self asString capitalized)) asSymbol