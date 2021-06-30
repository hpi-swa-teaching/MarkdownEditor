parsing
parseInline: aRawString

	| firstPhase secondPhase |
	firstPhase := MarkdownInlineParserPhase1 new.
	firstPhase parse: aRawString.
	secondPhase := (MarkdownInlineParserPhase2 newFrom: firstPhase).
	^ secondPhase parse