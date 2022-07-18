tests
testLoadImage

	| display mime |
	mime := MIMEDocument contentType: 'image/jpeg' content: self imageMock.
	display := (MarkdownUrlContentDisplay new mime: mime).
	
	self assert: display showContent first class == ImageMorph.
	self assert: display showContent first image bits size == 400