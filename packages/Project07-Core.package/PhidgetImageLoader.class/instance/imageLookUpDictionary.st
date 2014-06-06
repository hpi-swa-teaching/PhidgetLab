accessing
imageLookUpDictionary

	^ imageLookUpDictionary
		ifNil: [  imageLookUpDictionary := Dictionary newFrom:
			{ #'Bar' -> [ self bar ].
			#'Bar_off' -> [ self barOff ].
			#'Input' -> [ self input ].
			#'Input_off' -> [ self inputOff ].
			#'Joystick' -> [ self joystick ].
			#'Joystick_off' -> [ self joystickOff ].
			#'LED' -> [ self led ].
			#'LED_off' -> [ self ledOff ].
			#'LED_red' -> [ self ledRed ].
			#'LED_red_off' -> [ self ledRedOff ].
			#'Light' -> [ self light ].
			#'Light_off' -> [ self lightOff ].
			#'Output' -> [ self output ].
			#'Output_off' -> [ self outputOff ].
			#'Rotation' -> [ self rotation ].
			#'Rotation_off' -> [ self rotationOff ].
			#'Slider' -> [ self slider ].
			#'Slider_off' -> [ self sliderOff ].
			#'Temperature' -> [ self temperature ].
			#'Temperature_off' -> [ self temperatureOff ].
			#'Touch' -> [ self touch ].
			#'Touch_off' -> [ self touchOff ].
			#'Vibration' -> [ self vibration ].
			#'Vibration_off' -> [ self vibrationOff ]. }
  ]