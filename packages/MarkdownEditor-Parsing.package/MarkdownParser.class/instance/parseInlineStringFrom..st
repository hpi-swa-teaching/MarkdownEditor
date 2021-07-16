parsing
parseInlineStringFrom: aRawString

	^ MarkdownLinkedList 
		newFrom: {(MarkdownString newFrom: aRawString) startPosition: 1}