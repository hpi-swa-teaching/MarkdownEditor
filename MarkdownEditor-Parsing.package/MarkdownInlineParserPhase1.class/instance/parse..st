parsing
parse: aRawString

	| str |
	aRawString ifEmpty: [^ self].
	aRawString first caseOf: {
		[$*] -> [str := self processPossibleDelimitersFrom: aRawString, ' ']. 
		[$[] -> [str := self processLinkOrImageFrom: aRawString]}
		otherwise: [str := self processStringFrom: aRawString].
	self parse: str