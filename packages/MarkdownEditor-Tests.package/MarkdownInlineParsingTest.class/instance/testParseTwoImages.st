tests - image
testParseTwoImages
	
	| output expectedOutput image image2 |
	output := parser parseInline: '![first](./sample1.png)![second](./sample2.png)' with: 1.
	image := MarkdownImage new
		startPosition: 1;
		path: './sample1.png'.
	image children add: (MarkdownString newFrom: 'first' startingAt: 3).
	image2 := MarkdownImage new
		startPosition: 24;
		path: './sample2.png'.
	image2 children add: (MarkdownString newFrom: 'second' startingAt: 26).
	expectedOutput := MarkdownLinkedList newFrom: {image. image2}.
	
	self assert: expectedOutput equals: output