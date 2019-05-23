tests - matching
testOpenerAndCloserMatchesOpener

	| opener openerAndCloser |
	opener := MarkdownEmphasisDelimiter new
				isLeftFlanking: true;
				content: '***';
				yourself.
	openerAndCloser := MarkdownEmphasisDelimiter new
				isLeftFlanking: true;
				isRightFlanking: true;
				content: '***';
				yourself.	
	self assert: (openerAndCloser matches: opener)