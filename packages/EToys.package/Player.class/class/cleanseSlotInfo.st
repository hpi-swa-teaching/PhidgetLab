housekeeping
cleanseSlotInfo
	| newInfo |
	slotInfo ifNotNil:
		[newInfo := IdentityDictionary new.
		slotInfo associationsDo:
			[:assoc | newInfo at: assoc key asSymbol put: assoc value].
		slotInfo := newInfo]
