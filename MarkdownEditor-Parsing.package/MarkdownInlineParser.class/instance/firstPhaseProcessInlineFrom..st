new inline parsing
firstPhaseProcessInlineFrom: aRawString

	| str |
	aRawString ifEmpty: [^ self].
	
	aRawString first caseOf: {
		[$*] -> [str := self processEmphasisFrom: aRawString]. 
		[$[] -> [str := self processLinksFrom: aRawString]}
		otherwise: [str := self processTextFrom: aRawString].
	self firstPhaseProcessInlineFrom: str.