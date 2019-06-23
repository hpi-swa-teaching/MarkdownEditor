tests - interpretation
testRemoveDelimitersBetweenDelimiters

	| closer opener |
	inlineTextStyler tokenize: '**f*o** o*'.
	opener := inlineTextStyler tokens first.
	closer := inlineTextStyler tokens fifth.
	inlineTextStyler removeDelimitersBetween: opener and: closer.
	
	self assert: (inlineTextStyler tokens third isKindOf: MarkdownString)