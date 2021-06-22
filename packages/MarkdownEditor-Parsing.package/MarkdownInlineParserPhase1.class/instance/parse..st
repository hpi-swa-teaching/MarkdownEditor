parsing
parse: aRawString

	| symbol |
	aRawString ifEmpty: [^ self].
	symbol := self delimiterManager delimiterTypeProcessing at: (aRawString first)
		ifAbsent: [#processStringFrom:].
	self parse: (self perform: symbol withArguments: {aRawString})
