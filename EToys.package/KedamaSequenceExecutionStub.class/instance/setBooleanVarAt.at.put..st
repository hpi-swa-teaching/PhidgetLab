accessing - private
setBooleanVarAt: arrayIndex at: i put: v

	(turtles arrays at: arrayIndex) at: i put: ((v == true or: [v isNumber and: [v ~= 0]]) ifTrue: [1] ifFalse: [0]).
