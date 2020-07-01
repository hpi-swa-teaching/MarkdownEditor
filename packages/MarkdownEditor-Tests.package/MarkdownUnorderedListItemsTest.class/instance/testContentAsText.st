as yet unclassified
testContentAsText

	 | line item |
	 line := MarkdownLine newFrom: '- Item with **emphasis**' , Character cr.
	 item := MarkdownUnorderedListItem newFrom: line.
	 
	 self assert: item contentAsText = 'Item with **emphasis**'