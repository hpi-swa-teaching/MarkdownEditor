converting
asText

	| text |
	text := self content asText.
	self styler privateStyle: text.
	^ text