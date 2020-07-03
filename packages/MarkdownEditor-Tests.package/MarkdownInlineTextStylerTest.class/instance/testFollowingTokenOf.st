tests - tokenization
testFollowingTokenOf

	| open close |
	
	open := MarkdownToken new.
	close := MarkdownToken new.
	inlineTextStyler tokens: {open. close}.
	
	self assert: (inlineTextStyler followingTokenOf: open) equals: close