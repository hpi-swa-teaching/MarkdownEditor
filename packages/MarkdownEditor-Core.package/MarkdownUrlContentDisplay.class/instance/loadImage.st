contentLoading
loadImage

	| content |
	content := (Form fromBinaryStream: mime contentStream).
	content width @ content height > (self initialExtent - self borderGap)
		ifTrue: [content := content scaledToSize: self initialExtent - self borderGap].
	^ content asMorph