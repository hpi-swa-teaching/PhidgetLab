type and class ID maps
deviceTypeIdEtoysMap
	"Answer a map from phidget device type id to Class objects in PhdEtoys.
	See the phidget21 documentation at CPhidget_DeviceID to see where these values come from."

	DeviceTypeIdEtoysMap ifNotNil: [ ^ DeviceTypeIdEtoysMap ].
	
	DeviceTypeIdEtoysMap := Dictionary new: DeviceTypeIdMap size.
	DeviceTypeIdEtoysMap
		add: #Accelerometer2Axis 			-> nil;
		add: #Accelerometer3Axis 			-> PhdETAccelerometer;
		add: #AdvancesServo1Motor 			-> nil;
		add: #AdvancesServo8Motor 			-> nil;
		add: #BipolarStepper1Motor 			-> nil;
		add: #Encoder1Encoder1Input 		-> nil;
		add: #EncoderHS1Encoder 			-> nil;
		add: #InterfaceKit004 				-> PhdETInterfaceKit;
		add: #InterfaceKit008 				-> PhdETInterfaceKit;
		add: #InterfaceKit01616 				-> PhdETInterfaceKit;
		add: #InterfaceKit888 				-> PhdETInterfaceKit;
		add: #InterfaceKit888wLCD 			-> PhdETInterfaceKit;
		add: #LED64 						-> nil;
		add: #LinearTouch 					-> nil;
		add: #MotorControlHC2Motor 			-> PhdETMotorControl;
		add: #MotorControlLVMotor4Input 	-> PhdETMotorControl;
		add: #PHSensor 						-> nil;
		add: #RFID2Output 					-> nil;
		add: #RotaryTouch 					-> nil;
		add: #Servo1Motor 					-> PhdETServo1Motor;
		add: #TemperatureSensor 			-> nil;
		add: #TextLCD2x20w888 				-> PhdETTextLCD;
		add: #UnipolarStepper4Motor 		-> nil;
		add: #InterfaceKit088wLCD 			-> PhdETInterfaceKit;
		add: #InterfaceKit488 				-> PhdETInterfaceKit;
		add: #RFID 							-> nil;
		add: #Servo1MotorOld 				-> PhdETServo1Motor;
		add: #Servo4Motor 					-> PhdETServo1Motor;			"not fully supported!"
		add: #Servo4MotorOld 				-> PhdETServo1Motor;			"not fully supported!"
		add: #TextLCD2x20 					-> PhdETTextLCD;
		add: #TextLCD2x20w088 				-> PhdETTextLCD;
		add: #TextLED1x8 					-> nil;
		add: #TextLED4x8 					-> nil;
		add: #WeightSensor 					-> nil.

	^ DeviceTypeIdEtoysMap