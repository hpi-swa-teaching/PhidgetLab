type and class ID maps
deviceClassIdMap
	"Answer a map from phidget device class id in phidget21 to symbol representing that class id.
	See the phidget21 documentation at CPhidget_DeviceClass to see where these values come from."

	DeviceClassIdMap ifNotNil: [ ^ DeviceClassIdMap ].
	
	DeviceClassIdMap := Dictionary new: 17.
	DeviceClassIdMap
		add: 1 	-> #Nothing;				"PHIDCLASS_NOTHING"
		add: 2 	-> #Accelerometer;		"PHIDCLASS_ACCELEROMETER"
		add: 3 	-> #AdvancedServo;		"PHIDCLASS_ADVANCEDSERVO"
		add: 4 	-> #Encoder;				"PHIDCLASS_ENCODER"
		add: 5 	-> #GPS;					"PHIDCLASS_GPS"
		add: 6 	-> #Gyroscope;			"PHIDCLASS_GYROSCOPE"
		add: 7 	-> #InterfaceKit;			"PHIDCLASS_INTERFACEKIT"
		add: 8 	-> #LED;					"PHIDCLASS_LED"
		add: 9 	-> #MotorControl;		"PHIDCLASS_MOTORCONTROL"
		add: 10 	-> #PHSensor;			"PHIDCLASS_PHSENSOR"
		add: 11 	-> #RFID;				"PHIDCLASS_RFID"
		add: 12 	-> #Servo;				"PHIDCLASS_SERVO"
		add: 13 	-> #Stepper;				"PHIDCLASS_STEPPER"
		add: 14 	-> #TemperatureSensor;	"PHIDCLASS_TEMPERATURESENSOR"
		add: 15 	-> #TextLCD;				"PHIDCLASS_TEXTLCD"
		add: 16 	-> #TExtLED;				"PHIDCLASS_TEXTLED"
		add: 17 	-> #WeightSensor.		"PHIDCLASS_WEIGHTSENSOR"
	
	^ DeviceClassIdMap