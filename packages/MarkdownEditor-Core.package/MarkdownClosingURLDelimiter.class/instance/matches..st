testing
matches: aMarkdownToken

	^ aMarkdownToken isDelimiter
		and: [aMarkdownToken isOpener]
		and: [aMarkdownToken class = MarkdownOpeningURLDelimiter]