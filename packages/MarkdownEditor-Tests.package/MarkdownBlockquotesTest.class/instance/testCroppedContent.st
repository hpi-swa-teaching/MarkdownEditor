tests - recognition
testCroppedContent

	| blockquote |
	
	blockquote := (MarkdownLine newFrom: '> In medias res' with: MarkdownStyleSettings default) asMarkdownBlock.
	
	self assert: blockquote croppedContent = ' In medias res'