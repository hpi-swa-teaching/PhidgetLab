running
setupLightSensorPort

	kit ifNotNil:
		[lsPort := PhdETLightSensorPort newStandAlone: kit].