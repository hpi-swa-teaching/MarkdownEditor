tests - interpretation
testRemoveDelimitersBetweenDelimiters

	| closer opener |
	inlineParser tokenize: '**f*o** o*'.
	opener := inlineParser tokens first.
	closer := inlineParser tokens fifth.
	inlineParser removeDelimitersBetween: opener and: closer.
	
	self assert: (inlineParser tokens third isKindOf: MarkdownString)