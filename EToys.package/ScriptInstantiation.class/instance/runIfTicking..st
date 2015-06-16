running
runIfTicking: nowTick 
	"If the receiver is meant to be ticking, run it if it's time"

	| ticks rate |
	status == #ticking ifFalse: [^self].
	rate := self tickingRate.
	ticks := (lastTick isNil or: [nowTick < lastTick]) 
				ifTrue: 
					[lastTick := nowTick.
					1]
				ifFalse: [((nowTick - lastTick) * rate * 0.001) asInteger].
	ticks <= 0 ifTrue: [^self].

	"Scripts which have been out of the world and then return can have a huge number of ticks accumulated. A better fix would be to reset <lastTick> when a script leaves/enters the world. Also, if the system is falling behind, this attempt to catch up can result in falling further behind, leading to sluggish behavior and termination of ticking status. Whether the user really wants this catch up behavior needs to be determined (often she will not, I suspect) and better ways of doing it need to be found.  (This comment inserted by Bob Arning on 3/5/2001)"
	ticks := 1.
	1 to: ticks * self frequency do: [:i | player triggerScript: selector].
	lastTick := nowTick.
	ticks > 10 
		ifTrue: 
			["check if we're lagging behind"

			ticks <= ((Time millisecondClockValue - lastTick) * rate / 1000) asInteger 
				ifTrue: 
					["e.g., time to run script is higher than number of ticks"

					self status: #paused.
					self updateAllStatusMorphs]]