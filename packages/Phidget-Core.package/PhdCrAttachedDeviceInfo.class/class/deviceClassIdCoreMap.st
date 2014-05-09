type and class ID maps
deviceClassIdCoreMap
	"Answer a map from symbols representing phidget device class IDs in phidget21 to Class objects in PhdCr.
	See the phidget21 documentation at CPhidget_DeviceClass to see where these values come from."

	DeviceClassIdCoreMap ifNotNil: [ ^ DeviceClassIdCoreMap ].
	
	DeviceClassIdCoreMap := Dictionary new: DeviceClassIdMap size.
	DeviceClassIdCoreMap
		at: #Nothing 				put: nil;
		at: #Accelerometer 			put: PhdCrAccelerometer;
		at: #AdvancedServo 		put: PhdCrAdvancedServo;
		at: #Encoder 				put: nil;
		at: #GPS 					put: nil;
		at: #Gyroscope 				put: nil;
		at: #InterfaceKit 			put: PhdCrInterfaceKit;
		at: #LED 					put: nil;	
		at: #MotorControl 			put: PhdCrMotorControl;
		at: #PHSensor 				put: nil;
		at: #RFID 					put: PhdCrRFID;
		at: #Servo 					put: PhdCrServo;
		at: #Stepper 				put: nil;
		at: #TemperatureSensor 		put: nil;
		at: #TextLCD 				put: PhdCrTextLCD;
		at: #TextLED 				put: nil;
		at: #WeightSensor 			put: nil;
		at: #Generic 				put: nil;
		at: #IR 						put: nil;
		at: #Spatial 				put: nil.
	
	^ DeviceClassIdCoreMap