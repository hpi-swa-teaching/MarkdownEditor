parsing
checkBlankAfterParagraph: aParsingState

	^ aParsingState currentLine isAllSeparators 
	& (aParsingState container class = MarkdownParagraph2)