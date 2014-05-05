type and class ID maps
deviceClassIdCoreMap
	"Answer a map from symbols representing phidget device class IDs in phidget21 to Class objects in PhdCr.
	See the phidget21 documentation at CPhidget_DeviceClass to see where these values come from."

	DeviceClassIdCoreMap ifNotNil: [ ^ DeviceClassIdCoreMap ].
	
	DeviceClassIdCoreMap := Dictionary new: DeviceClassIdMap size.
	DeviceClassIdCoreMap
		add: #Nothing 				-> nil;
		add: #Accelerometer 		-> PhdCrAccelerometer;
		add: #AdvancedServo 		-> PhdCrAdvancedServo;
		add: #Encoder 				-> nil;
		add: #GPS 					-> nil;
		add: #Gyroscope 			-> nil;
		add: #InterfaceKit 			-> PhdCrInterfaceKit;
		add: #LED 					-> nil;	
		add: #MotorControl 			-> PhdCrMotorControl;
		add: #PHSensor 				-> nil;
		add: #RFID 					-> PhdCrRFID;
		add: #Servo 				-> PhdCrServo;
		add: #Stepper 				-> nil;
		add: #TemperatureSensor 	-> nil;
		add: #TextLCD 				-> PhdCrTextLCD;
		add: #TextLED 				-> nil;
		add: #WeightSensor 			-> nil.
	
	^ DeviceClassIdCoreMap