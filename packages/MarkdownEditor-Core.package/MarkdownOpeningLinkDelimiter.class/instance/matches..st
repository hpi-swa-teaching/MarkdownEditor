initialize-release
matches: aMarkdownToken

	^ aMarkdownToken isDelimiter
		and: [aMarkdownToken isCloser]
		and: [aMarkdownToken class = MarkdownClosingLinkDelimiter]