parsing
checkBlankAfterParagraph: aParsingState

	^ aParsingState currentLine isAllSeparators 
		and: [aParsingState container class = MarkdownParagraph]