tests
testEndPosition

	| element |
	
	element := MarkdownInlineElement new.
	element endPosition: 21.
	
	self assert: element endPosition = 21