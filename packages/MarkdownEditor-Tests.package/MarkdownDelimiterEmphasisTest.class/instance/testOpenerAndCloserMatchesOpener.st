tests - matching
testOpenerAndCloserMatchesOpener

	| opener openerAndCloser |
	opener := MarkdownEmphasisDelimiter new
				leftFlanking: true;
				content: '***';
				yourself.
	openerAndCloser := MarkdownEmphasisDelimiter new
				leftFlanking: true;
				rightFlanking: true;
				content: '***';
				yourself.	
	self assert: (openerAndCloser matches: opener)