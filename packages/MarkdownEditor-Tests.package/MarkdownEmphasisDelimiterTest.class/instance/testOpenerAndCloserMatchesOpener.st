tests - matching
testOpenerAndCloserMatchesOpener

	| opener openerAndCloser |
	opener := MarkdownEmphasisDelimiter new
				isLeftFlanking: true;
				isRightFlanking: false;
				content: '***';
				yourself.
	openerAndCloser := MarkdownEmphasisDelimiter new
				isLeftFlanking: true;
				isRightFlanking: true;
				content: '***';
				yourself.
				
	self assert: (openerAndCloser matches: opener)