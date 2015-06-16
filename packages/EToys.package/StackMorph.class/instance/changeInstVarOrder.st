background
changeInstVarOrder
	"Change the order of the receiver's instance variables"

	| reply |
	reply := UIManager default request: 'rearrange, then accept; or cancel' initialAnswer:
		((self currentPage player class instVarNames asArray collect: [:v | v asSymbol]) storeString copyWithoutAll: #($# $( $))) asString.
	reply isEmptyOrNil ifTrue: [^ self].
	self flag: #deferred.  "Error checking and graceful escape wanted"
	self currentPage player class resortInstanceVariables: (Compiler evaluate:
		('#(', reply, ')'))