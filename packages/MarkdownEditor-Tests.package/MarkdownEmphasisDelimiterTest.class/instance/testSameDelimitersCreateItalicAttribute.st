tests - attributes
testSameDelimitersCreateItalicAttribute

	| opener closer attribute |
	opener := MarkdownEmphasisDelimiter new
					content: '*';
					startPosition: 1;
					yourself.
	closer := MarkdownEmphasisDelimiter new
					content: '*';
					startPosition: 5;
					yourself.
					
	attribute := closer attributeStartingAt: opener. 	
	self assert: MarkdownEmphasis italic textAttribute equals: attribute textAttribute.
	self assert: 1 equals: attribute startPosition.
	self assert: 5 equals: attribute endPosition