Etoys-Support
additionsToViewerCategories
	"Answer a list of (<categoryName> <list of category specs>) pairs that characterize the phrases this kind of morph wishes to add to various Viewer categories."
	^ #(
		#(
			#Phidget
			#(
				#(
					#slot
					#MinPosition
					'This is minimum position the servo motor can handle.'
					#Float
					#readOnly
					#Player
					#getServo1MotorMinPosition
					#unused
					#unused
				)
				#(
					#slot
					#MaxPosition
					'This is maximum position the servo motor can handle.'
					#Float
					#readOnly
					#Player
					#getServo1MotorMaxPosition
					#unused
					#unused
				)
				#(
					#slot
					#Position
					'This is the current position of the servo motor.'
					#Float
					#readWrite
					#Player
					#getServo1MotorCurrentPosition
					#Player
					#setServo1MotorCurrentPosition:
				)
				#(
					#slot
					#PositionInt
					'This is the current position of the servo motor maped as a Number between 0 and 1000.'
					#Number
					#readWrite
					#Player
					#getServo1MotorCurrentPositionNumber
					#Player
					#setServo1MotorCurrentPositionNumber:
				)
				#(
					#slot
					#Engaged
					'This is wether the servo motor is engaged or not.'
					#Boolean
					#readWrite
					#Player
					#getServo1MotorEngaged
					#Player
					#setServo1MotorEngaged:
				)
			)
		)
	)