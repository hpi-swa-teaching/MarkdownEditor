styling
applyStylingWith: aMarkdownStyler

	| text |
	text := ('<', self path, '>') asText.
	text addAllAttributes: {MarkdownClickableAttribute newFrom: self path. TextEmphasis underlined}.
	^ text