running
testIfAllSensorsExist
	| sensorDescriptionsInterfaceKit sensorsInterfaceKit allSensors |
	sensorDescriptionsInterfaceKit := interfaceKit collectPortDescriptorQuads.
	sensorsInterfaceKit := sensorDescriptionsInterfaceKit collect: [:each | each first].
	allSensors := self class sensorsList.
	self assert: [allSensors allSatisfy: [: each | sensorsInterfaceKit includes: each]].
	