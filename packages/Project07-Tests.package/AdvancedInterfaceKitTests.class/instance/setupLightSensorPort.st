as yet unclassified
setupLightSensorPort

	kit ifNotNil:
		[lsPort := PhdETLightSensorPort newStandAlone: kit].