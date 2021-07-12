applying
addChild: aMarkdownBlock withState: aParsingState

	(self canContain: aMarkdownBlock) 
		ifFalse: [self finalize: aParsingState.
			self beClosed. 
			^ self container addChild: aMarkdownBlock withState: aParsingState].
	self appendChild: aMarkdownBlock.
	^ aMarkdownBlock