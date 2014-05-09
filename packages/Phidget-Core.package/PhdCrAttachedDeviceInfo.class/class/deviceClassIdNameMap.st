type and class ID maps
deviceClassIdNameMap
	"Answer a map from symbols representing phidget device class IDs in phidget21 to their names.
	See the phidget21 documentation to see where these values come from."

	DeviceClassIdNameMap ifNotNil: [ ^ DeviceClassIdNameMap ].
	
	DeviceClassIdNameMap := Dictionary new: DeviceClassIdMap size.
	DeviceClassIdNameMap
		at: #Nothing 				put: 'Uninitialized Phidget Handle';
		at: #Accelerometer 			put: 'PhidgetAccelerometer';
		at: #AdvancedServo 		put: 'PhidgetAdvancedServo';
		at: #Encoder 				put: 'PhidgetEncoder';
		at: #GPS 					put: 'PhidgetGPS';
		at: #Gyroscope 				put: 'PhidgetGyroscope';
		at: #InterfaceKit 			put: 'PhidgetInterfaceKit';
		at: #LED 					put: 'PhidgetLED';
		at: #MotorControl 			put: 'PhidgetMotorControl';
		at: #PHSensor 				put: 'PhidgetPHSensor';
		at: #RFID 					put: 'PhidgetRFID';
		at: #Servo 					put: 'PhidgetServo';
		at: #Stepper 				put: 'PhidgetStepper';
		at: #TemperatureSensor 		put: 'PhidgetTemperatureSensor';
		at: #TextLCD 				put: 'PhidgetTextLCD';
		at: #TextLED 				put: 'PhidgetTextLED';
		at: #WeightSensor 			put: 'PhidgetWeightSensor';
		at: #Generic					put: 'PhidgetGeneric';
		at: #IR 						put: 'PhidgetIR';
		at: #Spatial 				put: 'PhidgetSpatial'.
	
	^ DeviceClassIdNameMap