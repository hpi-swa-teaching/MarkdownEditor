converting
asText
	 | text |
	
	 text := self lines first content asText.
	 self styler privateStyle: text.
	 self addAttributesTo: text.
	 ^ text