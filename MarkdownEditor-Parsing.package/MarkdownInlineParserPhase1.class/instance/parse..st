parsing
parse: aRawString

	| str |
	aRawString ifEmpty: [^ self].
	aRawString first caseOf: {
		[$*] -> [str := self processPossibleDelimitersFrom: aRawString, ' ']. 
		[$[] -> [str := self processLinksFrom: aRawString].
		[$!] -> [str := self processImageFrom: aRawString]}
		otherwise: [str := self processStringFrom: aRawString].
	self parse: str