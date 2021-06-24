parsing - inline
parse: aRawString

	self firstPhase: MarkdownInlineParserPhase1 new.
	self firstPhase parse: aRawString.
	self secondPhase: (MarkdownInlineParserPhase2 newFrom: firstPhase).
	self secondPhase parse.
	
	^ self secondPhase inlineElements