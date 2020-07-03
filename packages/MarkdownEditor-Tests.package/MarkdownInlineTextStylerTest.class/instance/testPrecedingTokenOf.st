tests - tokenization
testPrecedingTokenOf

	| open close |
	
	open := MarkdownToken new.
	close := MarkdownToken new.
	inlineTextStyler tokens: {open. close}.
	
	self assert: (inlineTextStyler precedingTokenOf: close) equals: open