tests - interpretation
testRemoveDelimitersBetweenDelimiters

	| closer opener |
	inlineParser 
		text: '**f*o** o*' asText;
		tokenize.
	opener := inlineParser tokens first.
	closer := inlineParser tokens fifth.
	inlineParser removeDelimitersBetween: opener and: closer.
	
	self assert: (inlineParser tokens third isKindOf: MarkdownString)