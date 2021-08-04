instance creation
newFrom: aRawString fenceLength: aNumber

	| codeSpan |
	codeSpan := self new
		code: aRawString;
		rawContent: aRawString copy;
		fenceLength: aNumber;
		yourself.
	(aRawString matchesRegex: '\s+')
		ifFalse: [codeSpan handleWhiteSpaces].
	^ codeSpan