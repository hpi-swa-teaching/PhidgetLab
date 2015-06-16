slot getters/setters
getCardNumber
	"Answer the current card number"

	| aStack |
	^ (aStack := self stackEmbodied) cardNumberOf: aStack currentCard