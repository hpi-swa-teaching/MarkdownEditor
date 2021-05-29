morphic ui
configureCloseButton

	self window deleteCloseBox.
	self closeBox: ((self window createBox: SystemWindow closeBoxImage)
			setBalloonText: 'close this window' translated; name: 'closeBox').
	self window labelArea addMorphFront: self closeBox.
	self closeBox actionSelector: #handleCancel.
	self closeBox target: self