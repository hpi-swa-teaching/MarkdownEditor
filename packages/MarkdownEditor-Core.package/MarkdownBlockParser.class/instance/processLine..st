parsing
processLine: aString
	
	(MarkdownHeading matches: aString)
		ifTrue: [self blocks add: (MarkdownHeading newFrom: aString)]
		ifFalse: [(self isLastBlockExtendableWith: aString)
			ifTrue: [self blocks last append: aString]
			ifFalse: [self blocks add: (MarkdownParagraph newFrom: aString)]]