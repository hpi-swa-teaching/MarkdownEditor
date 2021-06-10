new inline parsing
firstPhaseProcessInlineFrom: aRawString

	| str |
	aRawString ifEmpty: [^ self].
	
	aRawString first caseOf: {
		[$*] -> [str := self addToDelimitersFrom: aRawString].
		[$[] -> [str := self processLinksFrom: aRawString].
		[$!] -> [str := self processImageFrom: aRawString]}
		otherwise: [str := self processStringFrom: aRawString].
	self firstPhaseProcessInlineFrom: str.