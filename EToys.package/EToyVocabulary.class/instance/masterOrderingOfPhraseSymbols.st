method list
masterOrderingOfPhraseSymbols
	"Answer a dictatorially-imposed presentation list of phrase-symbols.  This governs the order in which suitable phrases are presented in etoy viewers using the etoy vocabulary.  For any given category, the default implementation is that any items that are in this list will occur first, in the order specified here; after that, all other items will come, in alphabetic order by formal selector."

	^ #(beep: forward: turn: getX getY getLocationRounded getHeading getScaleFactor

		getLeft getRight getTop getBottom  
		getLength getWidth 
		getTheta getDistance getHeadingTheta getUnitVector

		startScript: pauseScript: stopScript: startAll: pauseAll: stopAll: tellAllSiblings: doScript:

		getColor getUseGradientFill getSecondColor  getRadialGradientFill  getBorderWidth getBorderColor getBorderStyle getRoundedCorners getDropShadow getShadowColor 

		getVolume play playUntilPosition: stop rewind getIsRunning getRepeat getPosition getTotalFrames getTotalSeconds getFrameGraphic getVideoFileName getSubtitlesFileName

		getGraphic getBaseGraphic

		getAllowEtoyUserCustomEvents 

		#getAutoExpansion #getAutoLineLayout #getBatchPenTrails getDropProducesWatcher #getFenceEnabled #getIndicateCursor #getIsOpenForDragNDrop #getIsPartsBin #getMouseOverHalos #getOriginAtCenter #getShowThumbnail

	 getFenceEnabled getKeepTickingWhilePainting getOliveHandleForScriptedObjects  getUseVectorVocabulary 

)