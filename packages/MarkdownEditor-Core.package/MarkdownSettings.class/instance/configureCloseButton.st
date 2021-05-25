morphic ui
configureCloseButton

	| box |
	
	self window deleteCloseBox.
	"box := (self window createBox: SystemWindow closeBoxImage)
			setBalloonText: 'close this window' translated.
	self connect: box signal: #mouseDown: to: self selector: #handleCancel. 
	self window labelArea addMorphFront: box"