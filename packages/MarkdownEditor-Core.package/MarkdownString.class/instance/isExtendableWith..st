testing
isExtendableWith: aCharacter

	^ ((MarkdownEmphasisDelimiter mayBeginWith: aCharacter) 
		or: [MarkdownOpeningLinkDelimiter mayBeginWith: aCharacter] 
		or: [MarkdownClosingLinkDelimiter mayBeginWith: aCharacter]) not