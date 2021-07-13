instance creation
newFrom: aRawString fenceLength: aNumber

	| codeSpan |
	codeSpan := self new
		content: aRawString;
		totalLength: aRawString size + (aNumber * 2);
		yourself.
	(aRawString matchesRegex: '\s+')
		ifFalse: [codeSpan handleWhiteSpaces].
	^ codeSpan