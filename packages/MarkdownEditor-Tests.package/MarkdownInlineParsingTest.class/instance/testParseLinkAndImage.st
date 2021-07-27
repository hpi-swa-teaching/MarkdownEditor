tests - links
testParseLinkAndImage
	
	| expectedOutput link output str str2 str3 emph image |
	output := parser parseInline: 'Lorem ipsum dolor sit amet. [**funny link**](https://hpi.de) et ![funny picture](example.png) Stet clita kasd gubergren.'.
	str := MarkdownString newFrom: 'Lorem ipsum dolor sit amet. ' startingAt: 1.
	str2 := MarkdownString newFrom: ' et ' startingAt: 61.
	str3 := MarkdownString newFrom: ' Stet clita kasd gubergren.' startingAt: 94.
	emph := MarkdownBold new
		startPosition: 30.
	emph children add: (MarkdownString newFrom: 'funny link' startingAt: 32).
	link := MarkdownLink newFrom: 'https://hpi.de'.
	link addChildrenFrom: {emph};
		startPosition: 29.
	image := MarkdownImage new
		startPosition: 65.
	image path: 'example.png'.
	image children add: (MarkdownString newFrom: 'funny picture' startingAt: 67).
	expectedOutput := MarkdownLinkedList newFrom: {str. link. str2. image. str3}.
	
	self assert: expectedOutput equals: output