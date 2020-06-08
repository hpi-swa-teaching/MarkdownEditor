converting
asText

	| text |
	text := self content asText.
	self styler privateStyle: text.
	text addAttribute: self textAttribute.
	text addAttribute: self colorAttribute.
	^ text