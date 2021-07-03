styling
applyStylingWith: aMarkdownStyler

	| text |
	text := ('<', self path, '>') asText.
	text addAllAttributes: {(PluggableTextAttribute evalBlock: self openUrl). TextEmphasis underlined}.
	^ text