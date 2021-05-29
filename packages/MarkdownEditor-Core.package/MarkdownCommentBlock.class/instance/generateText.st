converting
generateText

	| text |
	text := self content asText.
	self addAttributesTo: text from: self commentStart to: self commentEnd.
	^ text