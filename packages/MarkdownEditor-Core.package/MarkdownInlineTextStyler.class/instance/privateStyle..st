parsing
privateStyle: aText
	
	| attributes |
	aText runs: (RunArray runs: {aText size} values: {{}}).
	attributes := self parse: aText asString.
	self add: attributes to: aText