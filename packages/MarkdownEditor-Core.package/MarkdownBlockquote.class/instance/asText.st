converting
asText

	| text |
	text := self content asText.
	self addAttributesTo: text.
	self styler privateStyle: text.
	^ text