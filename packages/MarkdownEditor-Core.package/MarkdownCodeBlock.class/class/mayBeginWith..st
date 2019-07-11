testing
mayBeginWith: aMarkdownLine

	^ aMarkdownLine isIndented not
		and: [aMarkdownLine asString matchesRegex: ' *```+[^`]*']