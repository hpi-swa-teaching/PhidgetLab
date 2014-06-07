viewer values
calculateAmplitude
	| normedMasterValue normedSlaveValue strengthOfPush normedStrengthOfPush maxStrength normedStrength origin |
	origin := 500.
	maxStrength := 550.
	normedStrength := 1000.
	normedMasterValue := normedStrength / maxStrength * (origin - masterValue).
	normedSlaveValue := normedStrength / maxStrength * (origin - slaveValue).
	strengthOfPush  := (normedSlaveValue squared + normedMasterValue squared) sqrt.
	normedStrengthOfPush := strengthOfPush.
	^ normedStrengthOfPush 