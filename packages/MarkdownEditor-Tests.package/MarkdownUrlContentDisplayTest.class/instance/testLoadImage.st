tests
testLoadImage

	| display mime |
	mime := (Url absoluteFromFileNameOrUrlString: 'https://i.pinimg.com/474x/1e/b7/35/1eb735a6e02d1c7473a5bcd37dbc700d.jpg') retrieveContents.
	display := (MarkdownUrlContentDisplay new mime: mime).
	self assert: display contentMorph first class == ImageMorph.
	self assert: display contentMorph first image width == 400