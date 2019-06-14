converting
asText

	| text |
	text := Text string: self content attributes: self attributes.
	^ self styler styledTextFor: text