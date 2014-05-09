type and class ID maps
deviceClassIdMap
	"Answer a map from phidget device class id in phidget21 to symbol representing that class id.
	See the phidget21 documentation at CPhidget_DeviceClass to see where these values come from."

	DeviceClassIdMap ifNotNil: [ ^ DeviceClassIdMap ].
	
	DeviceClassIdMap := Dictionary new: 17.
	DeviceClassIdMap
		at: 1 	put: #Nothing;				"PHIDCLASS_NOTHING"
		at: 2 	put: #Accelerometer;		"PHIDCLASS_ACCELEROMETER"
		at: 3 	put: #AdvancedServo;		"PHIDCLASS_ADVANCEDSERVO"
		at: 4 	put: #Encoder;				"PHIDCLASS_ENCODER"
		at: 5 	put: #GPS;					"PHIDCLASS_GPS"
		at: 6 	put: #Gyroscope;			"PHIDCLASS_GYROSCOPE"
		at: 7 	put: #InterfaceKit;			"PHIDCLASS_INTERFACEKIT"
		at: 8 	put: #LED;					"PHIDCLASS_LED"
		at: 9 	put: #MotorControl;			"PHIDCLASS_MOTORCONTROL"
		at: 10 	put: #PHSensor;				"PHIDCLASS_PHSENSOR"
		at: 11 	put: #RFID;					"PHIDCLASS_RFID"
		at: 12 	put: #Servo;				"PHIDCLASS_SERVO"
		at: 13 	put: #Stepper;				"PHIDCLASS_STEPPER"
		at: 14 	put: #TemperatureSensor;	"PHIDCLASS_TEMPERATURESENSOR"
		at: 15 	put: #TextLCD;				"PHIDCLASS_TEXTLCD"
		at: 16 	put: #TExtLED;				"PHIDCLASS_TEXTLED"
		at: 17 	put: #WeightSensor;			"PHIDCLASS_WEIGHTSENSOR"
		at: 18 	put: #Genertic;
		at: 19 	put: #IR;
		at: 20 	put: #Spatial.
	
	^ DeviceClassIdMap