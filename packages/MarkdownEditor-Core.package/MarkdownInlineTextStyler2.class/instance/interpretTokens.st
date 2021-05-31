parsing2
interpretTokens
	
	| preparedTokens |
	preparedTokens := self tokens copy.
	self preparedTokens addFirst: MarkdownTextToken new.
	self preparedTokens addLast: MarkdownTextToken new.
	^self interpretTokens: self preparedTokens.