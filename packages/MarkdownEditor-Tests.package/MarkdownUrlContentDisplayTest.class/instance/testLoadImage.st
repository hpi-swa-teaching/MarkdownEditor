tests
testLoadImage

	| display mime |
	mime := self getMimeNamed: #exampleImageJpg withType: 'image/jpeg'.
	display := (MarkdownUrlContentDisplay new mime: mime).
	self assert: display showContent first class == ImageMorph.
	self assert: display showContent first image bits size == 400