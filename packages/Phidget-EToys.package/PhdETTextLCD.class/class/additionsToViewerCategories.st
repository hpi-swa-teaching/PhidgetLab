Etoys-Support
additionsToViewerCategories
	"Answer a list of (<categoryName> <list of category specs>) pairs that characterize the phrases this kind of morph wishes to add to various Viewer categories."
	^ #(
		#(
			#Phidget
			#(
				#(
					#slot
					#Rows
					'This is the number of rows the LCD can display.'
					#Number
					#readOnly
					#Player
					#getTextLCDRows
					#unused
					#unused
				)
				#(
					#slot
					#Columns
					'This is the number of columns the LCD can display.'
					#Number
					#readOnly
					#Player
					#getTextLCDColumns
					#unused
					#unused
				)
				#(
					#slot
					#Row1
					'This is the text displayed in row1.'
					#String
					#readWrite
					#Player
					#getTextLCDRow1
					#Player
					#setTextLCDRow1:
				)
				#(
					#slot
					#Row2
					'This is the text displayed in row2.'
					#String
					#readWrite
					#Player
					#getTextLCDRow2
					#Player
					#setTextLCDRow2:
				)
				#(
					#slot
					#Row1Scrolling
					'This is wether the text displayed in row1 scrolls or not.'
					#Boolean
					#readWrite
					#Player
					#getTextLCDRow1Scrolling
					#Player
					#setTextLCDRow1Scrolling:
				)
				#(
					#slot
					#Row2Scrolling
					'This is wether the text displayed in row2 scrolls or not.'
					#Boolean
					#readWrite
					#Player
					#getTextLCDRow2Scrolling
					#Player
					#setTextLCDRow2Scrolling:
				)
				#(
					#slot
					#ScrollSeperator
					'This text seperates the end of a text line and the beginning of the next text line while scrolling is active.'
					#String
					#readWrite
					#Player
					#getTextLCDScrollSeperator
					#Player
					#setTextLCDScrollSeperator:
				)
			)
		)
	)