type and class ID maps
deviceTypeIdMap
	"Answer a map from phidget device type id in phidget21 to symbols representing that phidget type.
	See the phidget21 documentation at CPhidget_DeviceID to see where these values come from."

	DeviceTypeIdMap ifNotNil: [ ^ DeviceTypeIdMap ].
	
	DeviceTypeIdMap := Dictionary new: 34.
	DeviceTypeIdMap
		add: 113 	-> #Accelerometer2Axis;					"PHIDID_ACCELEROMETER_2AXIS = 0x071"
		add: 126 	-> #Accelerometer3Axis; 					"PHIDID_ACCELEROMETER_3AXIS = 0x07E"
		add: 130 	-> #AdvancedServo1Motor;				"PHIDID_ADVANCEDSERVO_1MOTOR = 0x082"
		add: 58 		-> #AdvancedServo8Motor;				"PHIDID_ADVANCEDSERVO_8MOTOR = 0x03A"
		add: 123 	-> #BipolarStepper1Motor;				"PHIDID_BIPOLAR_STEPPER_1MOTOR = 0x07B"
		add: 75 		-> #Encoder1Encoder1Input;				"PHIDID_ENCODER_1ENCODER_1INPUT = 0x04B"
		add: 128 	-> #EncoderHS1Encoder;					"PHIDID_ENCODER_HS_1ENCODER = 0x080"
		add: 64 		-> #InterfaceKit004;						"PHIDID_INTERFACEKIT_0_0_4 = 0x040"
		add: 129 	-> #InterfaceKit008;						"PHIDID_INTERFACEKIT_0_0_8 = 0x081"
		add: 68 		-> #InterfaceKit01616;					"PHIDID_INTERFACEKIT_0_16_16 = 0x044"
		add: 69 		-> #InterfaceKit888;						"PHIDID_INTERFACEKIT_8_8_8 = 0x045"
		add: 125 	-> #InterfaceKit888wLCD;					"PHIDID_INTERFACEKIT_8_8_8_w_LCD = 0x07D"
		add: 74 		-> #LED64;								"PHIDID_LED_64 = 0x04A"
		add: 118 	-> #LinearTouch;						"PHIDID_LINEAR_TOUCH = 0x076"
		add: 89 		-> #MotorControlHC2Motor;				"PHIDID_MOTORCONTROL_HC_2MOTOR = 0x059"
		add: 88 		-> #MotorControlLV2Motor4Input;			"PHIDID_MOTORCONTROL_LV_2MOTOR_4INPUT = 0x058"
		add: 116 	-> #PHSensor;							"PHIDID_PHSENSOR = 0x074"
		add: 49 		-> #RFID2Output;							"PHIDID_RFID_2OUTPUT = 0x031"
		add: 119 	-> #RotaryTouch;						"PHIDID_ROTARY_TOUCH = 0x077"
		add: 57 		-> #Servo1Motor;						"PHIDID_SERVO_1MOTOR = 0x039"
		add: 112 	-> #TemperatureSensor;					"PHIDID_TEMPERATURESENSOR = 0x070"
		add: 381 	-> #TextLCD2x20w888;					"PHIDID_TEXTLCD_2x20_w_8_8_8 = 0x17D"
		add: 122 	-> #UnipolarStepper4Motor;				"PHIDID_UNIPOLAR_STEPPER_4MOTOR = 0x07A"
		add: 83 		-> #InterfaceKit088wLCD;					"PHIDID_INTERFACEKIT_0_8_8_w_LCD = 0x053"
		add: 4 		-> #InterfaceKit488;						"PHIDID_INTERFACEKIT_4_8_8 = 4"
		add: 48 		-> #RFID;								"PHIDID_RFID = 0x030"
		add: 2 		-> #Servo1MotorOld;						"PHIDID_SERVO_1MOTOR_OLD = 2"
		add: 56 		-> #Servo4Motor;						"PHIDID_SERVO_4MOTOR = 0x038"
		add: 3 		-> #Servo4MotorOld;						"PHIDID_SERVO_4MOTOR_OLD = 3"
		add: 82 		-> #TextLCD2x20;							"PHIDID_TEXTLCD_2x20 = 0x052"
		add: 339 	-> #TextLCD2x20w088;					"PHIDID_TEXTLCD_2x20_w_0_8_8 = 0x153"
		add: 73 		-> #TextLED1x8;							"PHIDID_TEXTLED_1x8 = 0x049"
		add: 72 		-> #TextLED4x8;							"PHIDID_TEXTLED_4x8 = 0x048"
		add: 114 	-> #WeightSensor.						"PHIDID_WEIGHTSENSOR = 0x072"		

	^ DeviceTypeIdMap