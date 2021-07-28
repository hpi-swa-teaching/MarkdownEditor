styling
applyStylingWith: aMarkdownStyler

	| text |
	text := ('<', self autolinkPath, '>') asText.
	text addAllAttributes: self textAttributes.
	^ text