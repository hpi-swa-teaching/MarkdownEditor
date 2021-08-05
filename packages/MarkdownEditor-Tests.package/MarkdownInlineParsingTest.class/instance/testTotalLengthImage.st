tests - length
testTotalLengthImage

	| image |
	image := MarkdownImage new.
	image children add: (MarkdownString newFrom: 'image').
	image path: './sample.jpg'.
	self assert: 22 equals: image totalLength