tests - links
testParseLinkAndImage
	
	| expectedOutput link output str str2 str3 emph image |
	output := parser parse: 'Lorem ipsum dolor sit amet. [**funny link**](https://hpi.de) et ![funny picture](example.png) Stet clita kasd gubergren.'.
	str := MarkdownString2 newFrom: 'Lorem ipsum dolor sit amet. '.
	str2 := MarkdownString2 newFrom: ' et '.
	str3 := MarkdownString2 newFrom: ' Stet clita kasd gubergren.'.
	emph := MarkdownBold2 new.
	emph children add: (MarkdownString2 newFrom: 'funny link').
	link := MarkdownLink2 newFrom: 'https://hpi.de'.
	link addChildrenFrom: {emph}.
	image := MarkdownImage new.
	image path: 'example.png'.
	image children add: (MarkdownString2 newFrom: 'funny picture').
	expectedOutput := MarkdownLinkedList newFrom: {str. link. str2. image. str3}.
	
	self assert: expectedOutput equals: output