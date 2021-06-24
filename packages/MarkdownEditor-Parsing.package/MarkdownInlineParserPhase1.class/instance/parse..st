parsing
parse: aRawString

	| symbol |
	aRawString ifEmpty: [^ self].
	symbol := self delimiterTypeProcessing 
		at: (aRawString first)
		ifAbsent: [#processStringFrom:].
	self parse: (self perform: symbol withArguments: {aRawString})