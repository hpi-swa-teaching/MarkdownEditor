parsing - tokenization
tokenFor: aCharacter at: position
	
	| matchingTokenClass |
	self halt.
	matchingTokenClass := {MarkdownStrikeDelimiter. MarkdownItalicBoldDelimiter. MarkdownOpeningLinkDelimiter. 
			MarkdownClosingLinkDelimiter. MarkdownOpeningURLDelimiter. 
			MarkdownClosingURLDelimiter. MarkdownOpeningSimpleLinkDelimiter. MarkdownClosingSimpleLinkDelimiter}
		detect: [:tokenClass | tokenClass mayBeginWith: aCharacter]
		ifNone: [MarkdownString].
	^ matchingTokenClass newFor: aCharacter asString at: position