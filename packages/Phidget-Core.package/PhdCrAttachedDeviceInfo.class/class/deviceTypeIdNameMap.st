type and class ID maps
deviceTypeIdNameMap
	"Answer a map from phidget device type id to their names.
	See the phidget21 documentation to see where these values come from."

	DeviceTypeIdNameMap ifNotNil: [ ^ DeviceTypeIdNameMap ].
	
	DeviceTypeIdNameMap := Dictionary new: DeviceTypeIdMap size.
	DeviceTypeIdNameMap
		at: #Accelerometer2Axis 				put: 'Phidget Accelerometer 2-axis';
		at: #Accelerometer3Axis 				put: 'Phidget Accelerometer 3-axis';
		at: #AdvancesServo1Motor 			put: 'Phidget Advanced Servo Controller 1-motor';
		at: #AdvancesServo8Motor 			put: 'Phidget Advanced Servo Controller 8-motor';
		at: #BipolarStepper1Motor 			put: 'Phidget Bipolar Stepper Controller 1-motor';
		at: #Encoder1Encoder1Input 			put: 'Phidget Encoder 1-encoder 1-input';
		at: #EncoderHS1Encoder 				put: 'Phidget High Speed Encoder 1-encoder';
		at: #EncoderHS4Encoder4Input 		put: 'Phidget High Speed Encoder 4-encoder 4-input';
		at: #Generic 						put: 'Phidget Generic Device';
		at: #GPS 							put: 'Phidget GPS';
		at: #Gyroscope 						put: 'Phidget Gyroscope';
		at: #InterfaceKit004 				put: 'Phidget InterfaceKit 0/0/4';
		at: #InterfaceKit008 				put: 'Phidget InterfaceKit 0/0/8';
		at: #InterfaceKit01616 				put: 'Phidget InterfaceKit 0/16/16';
		at: #InterfaceKit057 				put: 'Phidget InterfaceKit 0/5/7';
		at: #InterfaceKit088wLCD 			put: 'Phidget InterfaceKit 0/8/8';
		at: #InterfaceKit488 				put: 'Phidget InterfaceKit 4/8/8';
		at: #InterfaceKit888 				put: 'Phidget InterfaceKit 8/8/8';
		at: #InterfaceKit888wLCD 			put: 'Phidget InterfaceKit 8/8/8';
		at: #IR 								put: 'Phidget IR Receiver Transmitter';
		at: #LED64 							put: 'Phidget LED 64';
		at: #LED64Adv 						put: 'Phidget LED 64 Advanced';
		at: #LinearTouch 					put: 'Phidget Touch Slider';
		at: #MotorControlHC2Motor 			put: 'Phidget High Current Motor Controller 2-motor';
		at: #MotorControlLVMotor4Input 		put: 'Phidget Low Voltage Motor Controller 2-motor 4-input';
		at: #Nothing 						put: 'Uninitialized Phidget Handle';
		at: #PHSensor 						put: 'Phidget PH Sensor';
		at: #RFID 							put: 'Phidget RFID';
		at: #RFID2Output 					put: 'Phidget RFID 2-output';
		at: #RotaryTouch 					put: 'Phidget Touch Rotation';
		at: #Servo1Motor 					put: 'Phidget Servo Controller 1-motor';
		at: #Servo1MotorOld 				put: 'Phidget Servo Controller 1-motor';
		at: #Servo4Motor 					put: 'Phidget Servo Controller 4-motor';
		at: #Servo4MotorOld 				put: 'Phidget Servo Controller 4-motor';
		at: #SpacialAccel3Axis 				put: 'Phidget Spacial 3/0/0';
		at: #SpacialAccel3Gyro1 				put: 'Phidget Spacial 3/1/0';
		at: #TemperatureSensor 				put: 'Phidget Temperature Sensor';
		at: #TemperatureSensor4 			put: 'Phidget Temperature Sensor 4-input';
		at: #TextLCD2x20 					put: 'Phidget TextLCD';
		at: #TextLCD2x20Custom 				put: 'Phidget TextLCD Custom';
		at: #TextLCD2x20w088 				put: 'Phidget TextLCD';
		at: #TextLCD2x20w888 				put: 'Phidget TextLCD';
		at: #TextLED1x8 						put: 'Phidget TextLED 1x8';
		at: #TextLED4x8 						put: 'Phidget TextLED 4x8';
		at: #UnipolarStepper4Motor 			put: 'Phidget Unipolar Stepper Controller 4-motor';
		at: #WeightSensor 					put: 'Phidget Weight Sensor'.

	^ DeviceTypeIdNameMap