as yet unclassified
asText
	 | text |
	
	 text := self line content asText.
	 self styler privateStyle: text.
	 text addAttribute: self textAttribute.
	 ^ text