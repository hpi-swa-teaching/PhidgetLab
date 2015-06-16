card data
asKeys
	| keys kk vd gotData |
	"Take my fields, tokenize the text, and return as an array in the same order as variableDocks.  Simple background fields on the top level.  If no data, return nil."

	keys := self class variableDocks copy.
	gotData := false.
	1 to: keys size do: [:ind |
		kk := nil.
		vd := self class variableDocks at: ind.
		vd type == #text ifTrue: [
			kk := (self perform: vd playerGetSelector) string
					findTokens: Character separators.
			kk isEmpty ifTrue: [kk := nil] ifFalse: [gotData := true]].
		keys at: ind put: kk].
	^ gotData ifTrue: [keys] ifFalse: [nil]