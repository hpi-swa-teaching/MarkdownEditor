building
configureCloseButton

	| box |
	self settings window deleteCloseBox.
	box := (self settings window createBox: SystemWindow closeBoxImage)
			setBalloonText: 'close this window' translated;
			name: 'closeBox'.
	self settings window labelArea addMorphFront: box.
	box actionSelector: #handleCancel.
	box target: self settings