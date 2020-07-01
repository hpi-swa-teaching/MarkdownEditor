as yet unclassified
testContentAsText

	 | line item |
	 line := MarkdownLine newFrom: '4. Item with *emphasis*' , Character cr.
	 item := MarkdownOrderedListItem newFrom: line.
	 
	 self assert: item contentAsText = 'Item with *emphasis*'