testing
isExtendableWith: aCharacter

	^ ((MarkdownEmphasisDelimiter mayBeginWith: aCharacter) 
		or: [MarkdownOpeningLinkDelimiter mayBeginWith: aCharacter] 
		or: [MarkdownClosingLinkDelimiter mayBeginWith: aCharacter]
		or: [MarkdownOpeningURLDelimiter mayBeginWith: aCharacter]
		or: [MarkdownClosingURLDelimiter mayBeginWith: aCharacter]) not