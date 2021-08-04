building
configureCloseButton

	| box window|
	window := self settings window.
	window deleteCloseBox.
	box := (window createBox: SystemWindow closeBoxImage)
			setBalloonText: 'close this window' translated;
			name: 'closeBox'.
	window labelArea addMorphFront: box.
	box actionSelector: #handleCancel;
		target: self settings