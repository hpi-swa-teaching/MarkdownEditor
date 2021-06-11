parsing
addTextToLastOpenBlock: aString

	aString ifNil: [^nil].
	self firstUnmatchedBlock isOpen 
		ifTrue: [self firstUnmatchedBlock addText: aString]
		ifFalse: [self lastMatchedBlock children add: (MarkdownParagraph2 newFrom: aString)]