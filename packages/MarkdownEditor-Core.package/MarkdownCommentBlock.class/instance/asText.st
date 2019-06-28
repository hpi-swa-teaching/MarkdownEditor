converting
asText

	| text |
	text := self content asText.
	text 
		addAttribute: self textAttribute
		from: self commentStart 
		to: self commentEnd.
	^ text