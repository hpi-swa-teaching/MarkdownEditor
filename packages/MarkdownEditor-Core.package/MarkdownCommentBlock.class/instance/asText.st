converting
asText

	| text |
	text := self content asText.
	text 
		addAttribute: (TextColor color: Color lightGray) 
		from: self commentStart 
		to: self commentEnd.
	^ text