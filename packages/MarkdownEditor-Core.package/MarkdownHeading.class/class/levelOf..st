testing
levelOf: aMarkdownHeading

	| chunks |
	chunks := aMarkdownHeading subStrings: {Character space. Character cr}.
	^ chunks first size