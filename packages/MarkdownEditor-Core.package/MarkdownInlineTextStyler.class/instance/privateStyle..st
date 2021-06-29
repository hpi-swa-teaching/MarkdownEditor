styling
privateStyle: aText
	
	| attributes |
	aText addAttribute: TextEmphasis normal.
	attributes := self parse: aText asString.
	self add: attributes to: aText.