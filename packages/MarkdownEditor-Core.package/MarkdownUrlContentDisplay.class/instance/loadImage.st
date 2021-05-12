contentLoading
loadImage

	| content |
	content := (Form fromBinaryStream: mime contentStream).
	content width @ content height > (550 asPoint)
		ifTrue: [content := content scaledToSize: 550 asPoint].
	^content asMorph