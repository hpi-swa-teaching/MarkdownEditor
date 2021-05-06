tests - matching
testOpenerAndCloserMatchesOpener

	| opener openerAndCloser |
	opener := MarkdownItalicBoldDelimiter new
				isLeftFlanking: true;
				isRightFlanking: false;
				content: '***';
				yourself.
	openerAndCloser := MarkdownItalicBoldDelimiter new
				isLeftFlanking: true;
				isRightFlanking: true;
				content: '***';
				yourself.
				
	self assert: (openerAndCloser matches: opener)