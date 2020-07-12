tests
testCroppedContent

	 | line item |
	 line := MarkdownLine newFrom: '4. Item with *emphasis*' , Character cr.
	 item := MarkdownOrderedListItem newFrom: line.
	 
	 self assert: item croppedContent = 'Item with *emphasis*'