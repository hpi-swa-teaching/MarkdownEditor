export
croppedContent

	^ String streamContents: [:croppedContentStream | 
	  self lines doWithIndex: [:line :index | 
		index > 1 ifTrue: [croppedContentStream space].
		croppedContentStream nextPutAll: 
			(line content copyFrom: 2 to: line content size)].
	  croppedContentStream contents]
