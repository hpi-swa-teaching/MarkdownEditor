testing
matches: aMarkdownToken

	^ aMarkdownToken isDelimiter
		and: [aMarkdownToken isCloser]
		and: [aMarkdownToken class = MarkdownClosingURLDelimiter]