type and class ID maps
deviceTypeIdEtoysMap
	"Answer a map from phidget device type id to Class objects in PhdEtoys.
	See the phidget21 documentation at CPhidget_DeviceID to see where these values come from."

	DeviceTypeIdEtoysMap ifNotNil: [ ^ DeviceTypeIdEtoysMap ].
	
	DeviceTypeIdEtoysMap := Dictionary new: DeviceTypeIdMap size.
	DeviceTypeIdEtoysMap
		at: #Accelerometer2Axis 				put: nil;
		at: #Accelerometer3Axis 				put: PhdETAccelerometer;
		at: #AdvancesServo1Motor 			put: nil;
		at: #AdvancesServo8Motor 			put: nil;
		at: #BipolarStepper1Motor 			put: nil;
		at: #Encoder1Encoder1Input 			put: nil;
		at: #EncoderHS1Encoder 				put: nil;
		at: #EncoderHS4Encoder4Input 		put: nil;
		at: #Generic 						put: nil;
		at: #GPS 							put: nil;
		at: #Gyroscope 						put: nil;
		at: #InterfaceKit004 				put: PhdETInterfaceKit;
		at: #InterfaceKit008 				put: PhdETInterfaceKit;
		at: #InterfaceKit01616 				put: PhdETInterfaceKit;
		at: #InterfaceKit057 				put: PhdETInterfaceKit;
		at: #InterfaceKit088wLCD 			put: PhdETInterfaceKit;
		at: #InterfaceKit488 				put: PhdETInterfaceKit;
		at: #InterfaceKit888 				put: PhdETInterfaceKit;
		at: #InterfaceKit888wLCD 			put: PhdETInterfaceKit;
		at: #IR 								put: nil;
		at: #LED64 							put: nil;
		at: #LED64Adv 						put: nil;
		at: #LinearTouch 					put: PhdETInterfaceKit;				"not fully supported"
		at: #MotorControlHC2Motor 			put: PhdETMotorControl;
		at: #MotorControlLVMotor4Input 		put: PhdETMotorControl;
		at: #Nothing 						put: nil;
		at: #PHSensor 						put: nil;
		at: #RFID 							put: nil;
		at: #RFID2Output 					put: nil;
		at: #RotaryTouch 					put: PhdETInterfaceKit;				"not fully supported"
		at: #Servo1Motor 					put: PhdETServo1Motor;
		at: #Servo1MotorOld 				put: PhdETServo1Motor;
		at: #Servo4Motor 					put: PhdETServo1Motor;				"not fully supported"
		at: #Servo4MotorOld 				put: PhdETServo1Motor;				"not fully supported"
		at: #SpacialAccel3Axis 				put: nil;
		at: #SpacialAccel3Gyro1 				put: nil;
		at: #TemperatureSensor 				put: nil;
		at: #TemperatureSensor4 			put: nil;
		at: #TextLCD2x20 					put: PhdETTextLCD;
		at: #TextLCD2x20Custom 				put: PhdETTextLCD;
		at: #TextLCD2x20w088 				put: PhdETTextLCD;
		at: #TextLCD2x20w888 				put: PhdETTextLCD;
		at: #TextLED1x8 						put: nil;
		at: #TextLED4x8 						put: nil;
		at: #UnipolarStepper4Motor 			put: nil;
		at: #WeightSensor 					put: nil.

	^ DeviceTypeIdEtoysMap