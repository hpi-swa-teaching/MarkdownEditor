styling
applyStylingWith: aMarkdownStyler

	| text |
	text := ('<', self path, '>') asText.
	text addAttribute: TextEmphasis underlined.
	^ text