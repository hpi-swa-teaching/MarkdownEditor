converting
asText
	 | text |
	
	 text := self line content asText.
	 self styler privateStyle: text.
	 self addAttributesTo: text.
	 ^ text