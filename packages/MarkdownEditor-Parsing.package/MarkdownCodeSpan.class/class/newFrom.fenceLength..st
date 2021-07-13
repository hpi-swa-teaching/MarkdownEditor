instance creation
newFrom: aRawString fenceLength: aNumber

	| codeSpan |
	codeSpan := self new
		content: aRawString;
		rawContent: aRawString copy;
		fenceLength: aNumber;
		yourself.
	(aRawString matchesRegex: '\s+')
		ifFalse: [codeSpan handleWhiteSpaces].
	^ codeSpan