parsing
privateStyle: aText
	
	| attributes |
	attributes := self parse: aText asString.
	self add: attributes to: aText