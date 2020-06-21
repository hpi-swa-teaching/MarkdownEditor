testing
asText

	| text |
	text := self content asText.
	Transcript show: self content, Character cr.
	self styler privateStyle: text.
	text addAttribute: self textAttribute.
	text addAttribute: self colorAttribute.
	^ text