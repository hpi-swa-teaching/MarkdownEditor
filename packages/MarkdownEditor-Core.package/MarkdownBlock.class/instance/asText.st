converting
asText

	| text |
	text := Text string: self content attributes: self attributes.
	^ MarkdownInlineParser new parse: text