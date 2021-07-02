tests - links
testParseLinkAndImage
	
	| expectedOutput link output str str2 str3 emph image |
	output := parser parseInline: 'Lorem ipsum dolor sit amet. [**funny link**](https://hpi.de) et ![funny picture](example.png) Stet clita kasd gubergren.'.
	str := MarkdownString newFrom: 'Lorem ipsum dolor sit amet. '.
	str2 := MarkdownString newFrom: ' et '.
	str3 := MarkdownString newFrom: ' Stet clita kasd gubergren.'.
	emph := MarkdownBold new.
	emph children add: (MarkdownString newFrom: 'funny link').
	link := MarkdownLink newFrom: 'https://hpi.de'.
	link addChildrenFrom: {emph}.
	image := MarkdownImage new.
	image path: 'example.png'.
	image children add: (MarkdownString newFrom: 'funny picture').
	expectedOutput := MarkdownLinkedList newFrom: {str. link. str2. image. str3}.
	
	self assert: expectedOutput equals: output