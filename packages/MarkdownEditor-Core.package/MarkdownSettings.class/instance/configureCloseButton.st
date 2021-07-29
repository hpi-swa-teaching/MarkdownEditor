morphic ui
configureCloseButton

	| box |
	self window deleteCloseBox.
	box := (self window createBox: SystemWindow closeBoxImage)
			setBalloonText: 'close this window' translated;
			name: 'closeBox'.
	self window labelArea addMorphFront: box.
	box actionSelector: #handleCancel.
	box target: self