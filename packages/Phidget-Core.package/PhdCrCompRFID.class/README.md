I am a special Phidget Component for reading RFID tags.
I have an antenna that can be enabled or disabled (getter/setter exist).
When my antenna is on I can read information about a near tag. Actually I only know which was the last tag I read, and whether I am currently reading any. The Phidget I belong to can signal when I found or lost a tag. (getter)

Currently I only belong to PhdCrRFID.
Example for usage there:
	rfid := PhdCrRFID new.
	rfid
		"The antenna might still be disabled, so enable it as soon as the Phidget is attached."
		on: #Attach do: [ rfid rfidSensor setAntennaState: true ];
		"Print to Transcript whenever we find or lose a tag. Print its identifier."
		on: #TagFound do: [ Transcript show: 'Tag found: ', rfid rfidSensor currentTag; cr ];
		on: #TagLost do: [ Transcript show: 'Tag lost: ', rfid rfidSensor lastTag; cr ];
		openAny.
	"Now attach a RFID Phidget, hold a tag near the Phidget and then take it away."
	rfid close.
