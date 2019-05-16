tests - matching
testMatchesOpener

	| opener openerAndCloser |
	opener := MarkdownDelimiterEmphasis new
				leftFlanking: true;
				content: '***';
				yourself.
	openerAndCloser := MarkdownDelimiterEmphasis new
				leftFlanking: true;
				rightFlanking: true;
				content: '***';
				yourself.	
	self assert: (openerAndCloser matches: opener)