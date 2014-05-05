Etoys-Support
additionsToViewerCategories
	"Answer a list of (<categoryName> <list of category specs>) pairs that characterize the phrases this kind of morph wishes to add to various Viewer categories."
	^ #(
		#(
			#Phidget
			#(
				#(
					#slot
					#Motor1Velocity
					'Velocity of the first attached motor. 0 means the motor is off. A Value between -100 and 100.'
					#Float
					#readWrite
					#Player
					#getMotorControlMotor1Velocity
					#Player
					#setMotorControlMotor1Velocity:
				)
				#(
					#slot
					#Motor2Velocity
					'Velocity of the second attached motor. 0 means the motor is off. A Value between -100 and 100.'
					#Float
					#readWrite
					#Player
					#getMotorControlMotor2Velocity
					#Player
					#setMotorControlMotor2Velocity:
				)
				#(
					#slot
					#Motor1Acceleration
					'Acceleration of the first attached motor. A value between MinAcceleration and MaxAcceleration.'
					#Float
					#readWrite
					#Player
					#getMotorControlMotor1Acceleration
					#Player
					#setMotorControlMotor1Acceleration:
				)
				#(
					#slot
					#Motor2Acceleration
					'Acceleration of the second attached motor. A value between MinAcceleration and MaxAcceleration.'
					#Float
					#readWrite
					#Player
					#getMotorControlMotor2Acceleration
					#Player
					#setMotorControlMotor2Acceleration:
				)
				#(
					#slot
					#MinAcceleration
					'Minimum possible Acceleration.'
					#Float
					#readOnly
					#Player
					#getMotorControlMinAcceleration
					#unused
					#unused
				)
				#(
					#slot
					#MaxAcceleration
					'Maximum possible Acceleration.'
					#Float
					#readOnly
					#Player
					#getMotorControlMaxAcceleration
					#unused
					#unused
				)
			)
		)
	)