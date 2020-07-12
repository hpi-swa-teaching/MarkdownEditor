tests
testCroppedContent

	 | line item |
	 line := MarkdownLine newFrom: '- Item with **emphasis**' , Character cr.
	 item := MarkdownUnorderedListItem newFrom: line.
	 
	 self assert: item croppedContent = 'Item with **emphasis**'