converting
asText
	 | text |
	
	 text := self lines first content asText.
	 self addAttributesTo: text.
	 self styler privateStyle: text.
	 ^ text