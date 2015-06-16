commands and slots
evaporate

	form bits class == ByteArray ifTrue: [form unhibernate].
	self primEvaporate: form bits rate: scaledEvaporationRate.
	self formChanged.
