parsing
parseInline: aRawString with: anOffset

	| firstPhase secondPhase |
	firstPhase := MarkdownInlineParserPhase1 newWith: anOffset.
	firstPhase parse: aRawString.
	secondPhase := (MarkdownInlineParserPhase2 newFrom: firstPhase).
	^ secondPhase parse