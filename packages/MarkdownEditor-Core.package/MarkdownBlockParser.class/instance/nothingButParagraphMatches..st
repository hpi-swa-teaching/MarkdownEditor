parsing
nothingButParagraphMatches: aString

	^ (MarkdownHeading matches: aString) not
		and: [(MarkdownCodeBlock matches: aString) not]