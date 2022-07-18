parsing
parseInlineStringFrom: aRawString with: anOffset

	^ MarkdownLinkedList 
		newFrom: {(MarkdownString newFrom: aRawString) startPosition: anOffset}