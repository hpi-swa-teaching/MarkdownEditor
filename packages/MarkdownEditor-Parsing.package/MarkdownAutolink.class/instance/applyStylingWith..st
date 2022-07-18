styling
applyStylingWith: aMarkdownStyler

	| text |
	text := ('<', self path, '>') asText.
	text addAllAttributes: self textAttributes.
	^ text