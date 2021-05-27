as yet unclassified
configureCloseButton

	| box |
	
	self window deleteCloseBox.
	box := (self window createBox: SystemWindow closeBoxImage)
			setBalloonText: 'close this window' translated.
	self window labelArea addMorphFront: box.
	box actionSelector: #handleClose.
	box target: self