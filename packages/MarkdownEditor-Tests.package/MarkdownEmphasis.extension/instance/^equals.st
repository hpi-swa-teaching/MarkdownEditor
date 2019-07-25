*MarkdownEditor-Tests
= aMarkdownEmphasis

	^ self endPosition = aMarkdownEmphasis endPosition
		and: [self startPosition = aMarkdownEmphasis startPosition]
		and: [self textAttribute = aMarkdownEmphasis textAttribute]
