converting
asText

	| text |
	text := Text string: self content attributes: self attributes.
	^ self inlineParser parse: text