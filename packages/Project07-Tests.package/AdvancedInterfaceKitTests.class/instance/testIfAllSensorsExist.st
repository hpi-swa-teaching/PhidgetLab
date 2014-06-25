testing
testIfAllSensorsExist
	| sensorDescriptionsInterfaceKit sensorsInterfaceKit allSensors |
	sensorDescriptionsInterfaceKit := self kit collectPortDescriptorQuads.
	sensorsInterfaceKit := sensorDescriptionsInterfaceKit collect: [:each | each first].
	allSensors := self class sensorsList.
	self assert: [allSensors allSatisfy: [: each | sensorsInterfaceKit includes: each]].
	