converting
generateText

	| text |
	text := self content asText.
	self styler privateStyle: text.
	self addAttributesTo: text.
	^ text